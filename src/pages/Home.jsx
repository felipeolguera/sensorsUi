import { Suspense, useEffect, useRef, useState } from "react";
import {
  GestureRecognizer,
  FilesetResolver,
  DrawingUtils,
} from "@mediapipe/tasks-vision";
import Map from "../Map";
import UiSensors from "../ui/UiSensors";
import Loader from "../Loader";

const Home = () => {
  let gestureRecognizer = GestureRecognizer;
  let runningMode = "IMAGE";
  let enableWebcamButton;
  let webcamRunning = false;
  const videoHeight = "100vh";
  const videoWidth = "100vw";

  const [landx, setLandX] = useState("");
  const [landy, setLandY] = useState("");
  const [landz, setLandZ] = useState("");

  const [gesture, setGesture] = useState("");
  const [noHand, setNoHand] = useState(false);
  const isGestureEnabled = useRef(false);

  const video = document.getElementById("webcam");
  const canvasElement = document.getElementById("output_canvas");
  const canvasCtx = canvasElement?.getContext("2d");
  const gestureOutput = document.getElementById("gesture_output");

  let lastVideoTime = -1;
  let results = undefined;

  // const [cursorPosition, setCursorPosition] = useState<{
  //   x,
  //   y
  // }>({ x: 0, y: 0 });

  // -----------------------------------------------------------------------------------------------------------------------------

  const createGestureRecognizer = async () => {
    const vision = await FilesetResolver.forVisionTasks(
      "https://cdn.jsdelivr.net/npm/@mediapipe/tasks-vision@latest/wasm"
    );
    gestureRecognizer.current = await GestureRecognizer.createFromOptions(
      vision,
      {
        baseOptions: {
          modelAssetPath:
            "https://storage.googleapis.com/mediapipe-models/gesture_recognizer/gesture_recognizer/float16/1/gesture_recognizer.task",
          delegate: "GPU",
        },
        runningMode: runningMode,
      }
    );
  };

  // -----------------------------------------------------------------------------------------------------------------------------

  const enableCam = () => {
    if (isGestureEnabled.current) {
      return (isGestureEnabled.current = false);
    }
    isGestureEnabled.current = true;
    if (!gestureRecognizer.current) {
      alert("Please wait for gestureRecognizer to load");
      return;
    }

    if (webcamRunning === true) {
      webcamRunning = false;
      if (enableWebcamButton) enableWebcamButton.innerText = "ENABLE";
    } else {
      webcamRunning = true;
      if (enableWebcamButton) enableWebcamButton.innerText = "DISABLE";
      if (video) {
        video.style.display = "none";
        if (enableWebcamButton) enableWebcamButton.style.display = "none";
      }
    }

    const constraints = {
      video: true,
    };

    navigator.mediaDevices.getUserMedia(constraints).then(function (stream) {
      if (video) {
        if (!isGestureEnabled.current) return;
        video.srcObject = stream;
        video.addEventListener("loadeddata", predictWebcam);
      }
    });
  };

  useEffect(() => {
    if (!isGestureEnabled.current) {
      video.srcObject = null;
    }
  }, [isGestureEnabled.current]);

  async function predictWebcam() {
    const webcamElement = document.getElementById("webcam");
    // Now let's start detecting the stream.
    if (runningMode === "IMAGE") {
      runningMode = "VIDEO";
      await gestureRecognizer.current.setOptions({
        runningMode: "VIDEO",
        min_tracking_confidence: 0.9,
      });
    }
    const nowInMs = Date.now();

    if (video && video.currentTime !== lastVideoTime) {
      lastVideoTime = video.currentTime;
      results = gestureRecognizer.current.recognizeForVideo(video, nowInMs / 2);
    }

    if (canvasCtx) {
      canvasCtx.save();
      canvasCtx.clearRect(0, 0, canvasElement.width, canvasElement.height);
      const drawingUtils = new DrawingUtils(canvasCtx);

      canvasElement.style.height = videoHeight;
      webcamElement.style.height = videoHeight;
      canvasElement.style.width = videoWidth;
      webcamElement.style.width = videoWidth;

      if (results.landmarks) {
        for (const landmarks of results.landmarks) {
          drawingUtils.drawConnectors(
            landmarks,
            GestureRecognizer.HAND_CONNECTIONS,
            {
              color: "#00FF00",
              lineWidth: 5,
            }
          );
          drawingUtils.drawLandmarks(landmarks, {
            color: "#FF0000",
            lineWidth: 2,
          });
        }
      }
      canvasCtx.restore();
    }

    if (results && results.gestures.length > 0 && gestureOutput) {
      setNoHand(false);

      gestureOutput.style.display = "none";

      gestureOutput.style.width = videoWidth;

      const categoryName = results.gestures[0][0].categoryName;
      const categoryScore = parseFloat(
        results.gestures[0][0].score * 100
      ).toFixed(2);
      const handedness = results.handednesses[0][0].displayName;

      const landeightx = parseFloat(results.landmarks[0][7].x * 2).toFixed(2);
      const landeighty = parseFloat(results.landmarks[0][7].y * 2).toFixed(2);
      const landeightz = parseFloat(results.landmarks[0][7].z * 100).toFixed(2);

      setLandX(landeightx);
      setLandY(landeighty);
      setLandZ(landeightz);
      setGesture(categoryName);

      // const x = landeightx * -window.innerWidth;
      // const y = landeighty * (window.innerHeight - window.innerHeight);
      // setCursorPosition({ x, y });

      gestureOutput.innerText = `
                    GestureRecognizer: ${categoryName}\n 
                    Confidence: ${categoryScore} %\n 
                    Handedness: ${handedness} \n
                    Landmark: \n x: ${landeightx}, \n y: ${landeighty}, \n z: ${landeightz},`;
    } else if (gestureOutput) {
      gestureOutput.style.display = "none";
      setNoHand(true);
    }

    if (webcamRunning === true) {
      window.requestAnimationFrame(predictWebcam);
    }
  }

  // -----------------------------------------------------------------------------------------------------------------------------

  useEffect(() => {
    createGestureRecognizer();
  }, []);

  useEffect(() => {
    console.log(landx, landz, gesture);
  });

  return (
    <>
      <Suspense fallback={<Loader />}>
        <Map
          landx={landx}
          landz={landz}
          gesture={gesture}
          noHand={isGestureEnabled && noHand}
        />
        {/* <Ui enableCam={enableCam} isGestureEnabled={isGestureEnabled.current} /> */}
        {/* <Energy enableCam={enableCam} isGestureEnabled={isGestureEnabled.current} /> */}
        <UiSensors
          enableCam={enableCam}
          isGestureEnabled={isGestureEnabled.current}
        />
        {/* <UiSensorsFloors
          enableCam={enableCam}
          isGestureEnabled={isGestureEnabled.current}
        /> */}
      </Suspense>
    </>
  );
};

export default Home;
