import { Html } from "@react-three/drei";
import { motion } from "framer-motion";

export default function Loader() {
  return (
    <Html>
      <motion.div
        className="box"
        initial={{ width: 0 }}
        animate={{
          width: 100,
        }}
        transition={{
          duration: 0.7,
          ease: "linear",
        }}
      />

      <motion.div
        className="boxcontainer"
        initial={{ opacity: 0.2 }}
        animate={{
          opacity: 0.5,
        }}
        transition={{
          duration: 0.1,
          ease: "easeInOut",
          repeat: Infinity,
        }}
      />
    </Html>
  );
}
