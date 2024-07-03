import { Route, Routes, useLocation } from "react-router-dom";
import { AnimatePresence } from "framer-motion";
import Home from "./pages/Home";
import SensorsFloors from "./pages/SensorsFloors";

export default function App() {
  const location = useLocation();

  return (
    <>
      <AnimatePresence mode="wait">
        <Routes key={location.pathname} location={location}>
          <Route path="/" element={<Home />} />
          <Route path="/floor" element={<SensorsFloors />} />
        </Routes>
      </AnimatePresence>
    </>
  );
}
