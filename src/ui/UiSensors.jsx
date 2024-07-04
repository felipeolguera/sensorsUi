/* eslint-disable react/no-unescaped-entities */
/* eslint-disable react/no-unknown-property */
import { EyeOutlined } from "@ant-design/icons";
import { color, motion } from "framer-motion";
import { useNavigate } from "react-router-dom";
import SectionCard from "../components/SectionCard";
import SectionCardIndex from "../components/SectionCardIndex";
import { useState } from "react";

// import { useLocation } from 'react-router-dom';

// interface  {
//   enableCam: () => void;
// }

const UiSensors = () =>
  // { enableCam, isGestureEnabled }
  {
    const handleClick = () => {
      enableCam();
    };

    const container = {
      hidden: { opacity: 0, x: -100 },
      show: {
        opacity: 1,
        x: 0,
        transition: {
          delay: 1,
          duration: 1,
          delayChildren: 2,
          staggerChildren: 0.2,
          ease: "easeInOut",
        },
      },
      exit: {
        opacity: 0,
        x: -100,
        transition: {
          delay: 0.3,
          duration: 1,
          delayChildren: 0.1,
          staggerChildren: 0.2,
          ease: "easeInOut",
        },
      },
    };

    const containerR = {
      hidden: { opacity: 0, x: 100 },
      show: {
        opacity: 1,
        x: 0,
        transition: {
          delay: 1,
          duration: 1,
          delayChildren: 2,
          staggerChildren: 0.2,
          ease: "easeInOut",
        },
      },
      exit: {
        opacity: 0,
        x: 100,
        transition: {
          delay: 0.3,
          duration: 1,
          delayChildren: 0.1,
          staggerChildren: 0.2,
          ease: "easeInOut",
        },
      },
    };

    const item = {
      hidden: { opacity: 0, y: 30 },
      show: { opacity: 1, y: 0 },
      exit: { opacity: 0, y: 60 },
    };

    // const location = useLocation();

    const startHandGesture = () => {
      enableCamo;
    };

    const navigate = useNavigate();

    const handleCalloutClick = () => {
      navigate("/floor");
    };

    const toHome = () => {
      navigate("/");
    };

    const toggleVisibility = () => {
      setIsVisible(!isVisible);
    };

    return (
      <>
        {/* -------------------------------------------------- SCREEN 1    --------------------------------------------------*/}

        <motion.div
          className="uicontainer"
          // key={location.pathname}
          variants={container}
          initial="hidden"
          animate="show"
          exit="exit"
        >
          <div className="ztlogo" onClick={toHome} />

          <section className="uileftsection">
            <div className="sectionbg" />
            <div className="sectionCardcontainer">
              <div className="sectionItem">
                <SectionCard
                  item={item}
                  handleCalloutClick={handleCalloutClick}
                  title="CO2"
                  value="409"
                  unit="ppm"
                />
              </div>

              <div className="sectionItem">
                <SectionCard
                  item={item}
                  handleCalloutClick={handleCalloutClick}
                  title="HUMIDITY"
                  value="68.2"
                  unit="%"
                />
              </div>

              <div className="sectionItem">
                <SectionCard
                  item={item}
                  handleCalloutClick={handleCalloutClick}
                  title="ILLUMINATION"
                  value="31"
                  unit="lux"
                />
              </div>
              <div className="sectionItem">
                <SectionCard
                  item={item}
                  handleCalloutClick={handleCalloutClick}
                  title="PRESSURE"
                  value="993"
                  unit="hPa"
                />
              </div>
            </div>
          </section>
        </motion.div>

        {/* -------------------------  RIGHT SECTION -------------------------*/}

        <motion.div
          className="uicontainer"
          // key={location.pathname}
          variants={containerR}
          initial="hidden"
          animate="show"
          exit="exit"
        >
          <section className="uirightsection">
            <div className="sectionbg" />
            <div className="sectionCardcontainer">
              <div className="sectionItem">
                <SectionCard
                  item={item}
                  handleCalloutClick={handleCalloutClick}
                  title="TEMPERATURE"
                  value="37.1"
                  unit="c"
                  chart="Chart Here"
                />
              </div>

              <div className="sectionItem">
                <SectionCard
                  item={item}
                  handleCalloutClick={handleCalloutClick}
                  title="TVOC"
                  value="82.3"
                  unit="ppb"
                  chart="Chart Here"
                />
              </div>

              <div className="sectionItem">
                <SectionCard
                  item={item}
                  handleCalloutClick={handleCalloutClick}
                  title="INFRARED"
                  value="4"
                  unit="µm"
                  chart="Chart Here"
                />
              </div>
              <div className="sectionItem">
                <SectionCard
                  item={item}
                  handleCalloutClick={handleCalloutClick}
                  title="LAI"
                  value="47.1"
                  unit="db"
                  chart="Chart Here"
                />
              </div>
            </div>
          </section>
        </motion.div>
      </>
    );
  };

export default UiSensors;
