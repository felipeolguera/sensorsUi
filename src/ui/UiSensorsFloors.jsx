/* eslint-disable react/no-unescaped-entities */
/* eslint-disable react/no-unknown-property */
import { AnimatePresence, motion, useCycle } from "framer-motion";
import { useNavigate } from "react-router-dom";
import SectionCardIndex from "../components/SectionCardIndex";
import SectionCard__charts from "../components/SectionCard__charts";
import { useState } from "react";
import { CloseSquareOutlined } from "@ant-design/icons";

// import { useLocation } from 'react-router-dom';

// interface  {
//   enableCam: () => void;
// }

const UiSensorsFloors = ({ enableCam, isGestureEnabled }) => {
  const handleClick = () => {
    enableCam();
  };

  const container = {
    hidden: { opacity: 0, x: -100 },
    show: {
      opacity: 1,
      x: 0,
      transition: {
        delay: 3,
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
        delay: 3,
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
        duration: 0.3,
        delayChildren: 0.6,
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

  const navigate = useNavigate();

  const [isVisible, setIsVisible] = useState(false);
  const [isOpen, setOpen] = useState(false);

  const handleCalloutClick = () => {
    setIsVisible(!isVisible);
    setOpen(!isOpen);
  };

  const toHome = () => {
    navigate("/");
  };

  const [activeMenu, setActiveMenu] = useState("YEAR");

  return (
    <>
      {/* -------------------------------------------------- SCREEN 2    --------------------------------------------------*/}

      <motion.div
        className="uicontainer"
        // key={location.pathname}
        variants={container}
        initial="hidden"
        animate="show"
        exit="exit"
      >
        <div className="ztlogo" onClick={toHome} />

        <section className={`uileftsectionindex ${isVisible ? "active" : " "}`}>
          <div className="sectionbg" />
          <div className="sectionCardcontainerindex">
            <div className="deviceDetails">
              <h2>Device Name</h2> <br /> <h4>Device Location</h4>
            </div>

            <div className="sectionItem">
              <SectionCardIndex
                item={item}
                handleCalloutClick={() => setIsVisible(!isVisible)}
                title="CO2"
                value="409"
                unit="ppm"
              />
            </div>

            <div className="sectionItem">
              <SectionCardIndex
                item={item}
                handleCalloutClick={handleCalloutClick}
                title="HUMIDITY"
                value="68.2"
                unit="%"
              />
            </div>

            <div className="sectionItem">
              <SectionCardIndex
                item={item}
                handleCalloutClick={handleCalloutClick}
                title="ILLUMINATION"
                value="31"
                unit="lux"
              />
            </div>
            <div className="sectionItem">
              <SectionCardIndex
                item={item}
                handleCalloutClick={handleCalloutClick}
                title="PRESSURE"
                value="993"
                unit="hPa"
              />
            </div>

            <div className="sectionItem">
              <SectionCardIndex
                item={item}
                handleCalloutClick={handleCalloutClick}
                title="TEMPERATURE"
                value="37.1"
                unit="c"
              />
            </div>

            <div className="sectionItem">
              <SectionCardIndex
                item={item}
                handleCalloutClick={handleCalloutClick}
                title="TVOC"
                value="82.3"
                unit="ppb"
              />
            </div>
            <div className="sectionItem">
              <SectionCardIndex
                item={item}
                handleCalloutClick={handleCalloutClick}
                title="INFRARED"
                value="4"
                unit="µm"
              />
            </div>
          </div>
        </section>
      </motion.div>

      {/* -------------------------------------------------- RIGHT SECTION  --------------------------------------------------*/}
      <AnimatePresence>
        {isVisible && (
          <motion.div
            className="uicontainer__charts"
            variants={containerR}
            initial="hidden"
            animate="show"
            exit="exit"
          >
            <section
              className="uirightsection__charts"
              style={{ overflowX: "hidden" }}
            >
              <div
                className="sectionCardcontainer"
                style={{
                  gap: "50px",
                  marginLeft: "10%",
                  justifyContent: "flex-start",
                  height: "100vh",
                  width: "100%",
                }}
              >
                <div className="top__bar">
                  <div
                    className={`top__menu ${
                      activeMenu === "DAY" ? "active" : ""
                    }`}
                    onClick={() => setActiveMenu("DAY")}
                  >
                    DAY
                  </div>
                  <div
                    className={`top__menu ${
                      activeMenu === "WEEK" ? "active" : ""
                    }`}
                    onClick={() => setActiveMenu("WEEK")}
                  >
                    WEEK
                  </div>
                  <div
                    className={`top__menu ${
                      activeMenu === "YEAR" ? "active" : ""
                    }`}
                    onClick={() => setActiveMenu("YEAR")}
                  >
                    YEAR
                  </div>

                  <div>
                    <CloseSquareOutlined
                      onClick={handleCalloutClick}
                      style={{
                        fontSize: "30px",
                        color: "rgba(61, 113, 129, 0.81)",
                      }}
                    />
                  </div>
                </div>

                <div className="sectionItem__charts">
                  <SectionCard__charts
                    item={item}
                    title="CO2"
                    value="409"
                    unit="ppm"
                    chart="Chart Here"
                  />
                </div>

                <div className="sectionItem__charts">
                  <SectionCard__charts
                    item={item}
                    title="HUMIDITY"
                    value="68.2"
                    unit="%"
                    chart="Chart Here"
                  />
                </div>

                <div className="sectionItem__charts">
                  <SectionCard__charts
                    item={item}
                    title="ILLUMINATION"
                    value="31"
                    unit="lux"
                    chart="Chart Here"
                  />
                </div>

                <div className="sectionItem__charts">
                  <SectionCard__charts
                    item={item}
                    title="PRESSURE"
                    value="993"
                    unit="hPa"
                    chart="Chart Here"
                  />
                </div>

                <div className="sectionItem__charts">
                  <SectionCard__charts
                    item={item}
                    title="TEMPERATURE"
                    value="37.1"
                    unit="c"
                    chart="Chart Here"
                  />
                </div>
              </div>
            </section>
          </motion.div>
        )}
      </AnimatePresence>
    </>
  );
};

export default UiSensorsFloors;
