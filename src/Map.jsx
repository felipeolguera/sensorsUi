/* eslint-disable react/no-unknown-property */
import { Canvas } from "@react-three/fiber";
import {
  Environment,
  OrbitControls,
  PerspectiveCamera,
  Preload,
} from "@react-three/drei";

import Loader from "./Loader";
import { Suspense } from "react";
// import Siemen from "./Siemen";
import { Bloom, EffectComposer } from "@react-three/postprocessing";
import Diorama from "./model/Diorama";

function Map({ landx, landz, noHand, gesture }) {
  //debug
  // const { x } = useControls({
  //   x: { value: -264.6, min: -555, max: 555, step: 0.1 },
  // });
  // const { y } = useControls({
  //   y: { value: 85.9, min: -555, max: 555, step: 0.1 },
  // });
  // const { z } = useControls({
  //   z: { value: -301.2, min: -555, max: 555, step: 0.1 },
  // });

  // const cameraPosition = (-264.6, 85.9, -301.2);

  return (
    <Canvas dpr={[1, 2]} shadows gl={{ toneMappingExposure: 0.5 }}>
      {/* <Stats /> */}
      <Preload all />
      {/* <color   attach={"#000000"} /> */}
      <ambientLight intensity={0.3} />
      {/* <spotLight
        angle={1}
        position={[30, 10, 0]}
        intensity={0.6}
        penumbra={0.4}
      /> */}

      <OrbitControls
        minPolarAngle={Math.PI / 4}
        maxPolarAngle={Math.PI / 2.2}
        // minDistance={51}
        // maxDistance={700}
        // maxZoom={811}
        // enablePan={true}
        autoRotate
        autoRotateSpeed={0.1}
      />
      <fog attach="fog" args={["black", 11, 1911]} />
      <Suspense fallback={<Loader />}>
        <PerspectiveCamera
          makeDefault
          position={[
            // 254.6, 95.9, -301.2
            // -368.6731268356359, 120.8952643131237, 44.82050887850214
            555.0, -49.0, 30.8,
            // x,y,z
          ]}
          near={111}
          far={26100}
          fov={12}
        />
        {/* <ModelOmantel5
          landx={landx}
          landz={landz}
          gesture={gesture}
          noHand={noHand}
        /> */}
        <Diorama
          landx={landx}
          landz={landz}
          gesture={gesture}
          noHand={noHand}
        />

        {/* <ModelOmantel4 landx={landx} landz={landz} gesture={gesture} noHand={noHand}/> */}
        {/* <DemoModel /> */}

        {/* <Siemen /> */}
        <EffectComposer disableNormalPass>
          <Bloom luminanceThreshold={0.5} mipmapBlur opacity={0.2} />
          {/* <ToneMapping /> */}
        </EffectComposer>

        <Environment
          preset="forest"
          // castShadow
          // files="./small_sky.hdr"
          // background
          // ground={{ height: 35, radius: 200, scale: 0.1 }}
        />
      </Suspense>
    </Canvas>
  );
}

export default Map;
