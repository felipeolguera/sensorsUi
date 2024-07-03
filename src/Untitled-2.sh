/* eslint-disable react/no-unknown-property */

import React, { useRef } from "react";
import { useGLTF } from "@react-three/drei";
import { useNavigate } from "react-router-dom";
import { motion } from "framer-motion-3d";


export default function DemoModel(props) {
  const { nodes, materials } = useGLTF("/2024-demo.glb");

  
  const navigate = useNavigate();

  const handleCalloutClick = () => {
    // Navigate to the desired route
     navigate('/building' )
  };
  return (
    <motion.group {...props} dispose={null} position={[0,-80,0]} 
    initial={{scale:0}} 
    animate={{scale:1}}
    transition={{duration:2, delay:0.3, ease:"easeInOut"}}
    exit= {{ scale:0, transition:{duration: 0.5, ease:"easeInOut", delay:0.3} }}

    >
      <group
        name="building01"
        position={[-70.94, 1.414, 116.986]}
        rotation={[0, -1.571, 0]}
        scale={35.081}
        onClick={handleCalloutClick}

      >
        <mesh
          name="Plane020"
          castShadow
          receiveShadow
          geometry={nodes.Plane020.geometry}
          material={materials["1.005"]}
        />
        <mesh
          name="Plane020_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_1.geometry}
          material={materials["1.001"]}
        />
        <mesh
          name="Plane020_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_2.geometry}
          material={materials["1.004"]}
        />
        <mesh
          name="Plane020_3"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_3.geometry}
          material={materials["1.002"]}
        />
        <mesh
          name="Plane020_4"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_4.geometry}
          material={materials.seam4}
        />
        <mesh
          name="Plane020_5"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_5.geometry}
          material={materials["1 blue glass"]}
        />
        <mesh
          name="Plane020_6"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_6.geometry}
          material={materials["1 glass frame"]}
        />
        <mesh
          name="Plane020_7"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_7.geometry}
          material={materials["2 dk blue glass"]}
        />
        <mesh
          name="Plane020_8"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_8.geometry}
          material={materials["1 seam"]}
        />
        <mesh
          name="Plane020_9"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_9.geometry}
          material={materials["1 kaki"]}
        />
        <mesh
          name="Plane020_10"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_10.geometry}
          material={materials["Material.022"]}
        />
        <mesh
          name="Plane020_11"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_11.geometry}
          material={materials["1"]}
        />
        <mesh
          name="Plane020_12"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_12.geometry}
          material={materials.silver}
        />
        <mesh
          name="Plane020_13"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_13.geometry}
          material={materials["seam.001"]}
        />
        <mesh
          name="Plane020_14"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_14.geometry}
          material={materials["Material.133"]}
        />
        <mesh
          name="Plane020_15"
          castShadow
          receiveShadow
          geometry={nodes.Plane020_15.geometry}
          material={materials.rood_sol}
        />
      </group>
      <group
        name="building02"
        position={[52.306, 9.031, -88.841]}
        rotation={[-Math.PI, 0, -Math.PI]}
        scale={[15.987, 15.987, 17.239]}
      >
        <mesh
          name="Cube032"
          castShadow
          receiveShadow
          geometry={nodes.Cube032.geometry}
          material={materials["Material.134"]}
        />
        <mesh
          name="Cube032_1"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_1.geometry}
          material={materials["Material.148"]}
        />
        <mesh
          name="Cube032_2"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_2.geometry}
          material={materials["Material.149"]}
        />
        <mesh
          name="Cube032_3"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_3.geometry}
          material={materials["Material.150"]}
        />
        <mesh
          name="Cube032_4"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_4.geometry}
          material={materials["Material.151"]}
        />
        <mesh
          name="Cube032_5"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_5.geometry}
          material={materials.kaki}
        />
        <mesh
          name="Cube032_6"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_6.geometry}
          material={materials["frame.006"]}
        />
        <mesh
          name="Cube032_7"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_7.geometry}
          material={materials["glass.010"]}
        />
        <mesh
          name="Cube032_8"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_8.geometry}
          material={materials["Material.152"]}
        />
        <mesh
          name="Cube032_9"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_9.geometry}
          material={materials["lite-gray"]}
        />
        <mesh
          name="Cube032_10"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_10.geometry}
          material={materials["dk-gray"]}
        />
        <mesh
          name="Cube032_11"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_11.geometry}
          material={materials["Material.153"]}
        />
        <mesh
          name="Cube032_12"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_12.geometry}
          material={materials["Material.154"]}
        />
        <mesh
          name="Cube032_13"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_13.geometry}
          material={materials["Material.155"]}
        />
        <mesh
          name="Cube032_14"
          castShadow
          receiveShadow
          geometry={nodes.Cube032_14.geometry}
          material={materials["Material.156"]}
        />
      </group>
      <group
        name="building03"
        position={[-13.797, 7.742, -251.054]}
        rotation={[0, -1.571, 0]}
        scale={14.834}
      >
        <mesh
          name="Cube033"
          castShadow
          receiveShadow
          geometry={nodes.Cube033.geometry}
          material={materials["1.003"]}
        />
        <mesh
          name="Cube033_1"
          castShadow
          receiveShadow
          geometry={nodes.Cube033_1.geometry}
          material={materials["2 glass"]}
        />
        <mesh
          name="Cube033_2"
          castShadow
          receiveShadow
          geometry={nodes.Cube033_2.geometry}
          material={materials["3"]}
        />
        <mesh
          name="Cube033_3"
          castShadow
          receiveShadow
          geometry={nodes.Cube033_3.geometry}
          material={materials["Material.157"]}
        />
      </group>
      <group
        name="building04"
        position={[-141.343, 9.801, -181.863]}
        rotation={[0, 1.571, 0]}
        scale={[2.95, 3.093, 3.093]}
      >
        <mesh
          name="Mesh044"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044.geometry}
          material={materials["CRN.Material #168"]}
        />
        <mesh
          name="Mesh044_1"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_1.geometry}
          material={materials.aluminum2}
        />
        <mesh
          name="Mesh044_2"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_2.geometry}
          material={materials["CRN.Material #166"]}
        />
        <mesh
          name="Mesh044_3"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_3.geometry}
          material={materials["CRN.rMat016"]}
        />
        <mesh
          name="Mesh044_4"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_4.geometry}
          material={materials.StoneTile}
        />
        <mesh
          name="Mesh044_5"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_5.geometry}
          material={materials["CRN.Material #167"]}
        />
        <mesh
          name="Mesh044_6"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_6.geometry}
          material={materials["CRN.Material #165"]}
        />
        <mesh
          name="Mesh044_7"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_7.geometry}
          material={materials["glass.011"]}
        />
        <mesh
          name="Mesh044_8"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_8.geometry}
          material={materials["Material.162"]}
        />
        <mesh
          name="Mesh044_9"
          castShadow
          receiveShadow
          geometry={nodes.Mesh044_9.geometry}
          material={materials["Material.163"]}
        />
      </group>
      <mesh
        name="Plane130"
        castShadow
        receiveShadow
        geometry={nodes.Plane130.geometry}
        material={materials.GRAY2}
        position={[98.764, 11.004, -184.553]}
      />
      <mesh
        name="Plane131"
        castShadow
        receiveShadow
        geometry={nodes.Plane131.geometry}
        material={nodes.Plane131.material}
        position={[99.787, 11.967, -185.323]}
      />
      <group name="Plane132" position={[93.18, 11.807, -183.43]}>
        <mesh
          name="Plane135_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane135_1.geometry}
          material={materials["Material.126"]}
        />
        <mesh
          name="Plane135_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane135_2.geometry}
          material={materials["Material.127"]}
        />
      </group>
      <mesh
        name="Plane133"
        castShadow
        receiveShadow
        geometry={nodes.Plane133.geometry}
        material={materials["Material.006"]}
        position={[54.809, 10.085, -186.825]}
        scale={10.972}
      />
      <mesh
        name="Plane134"
        castShadow
        receiveShadow
        geometry={nodes.Plane134.geometry}
        material={materials["Material.006"]}
        position={[54.809, 10.085, -186.825]}
        scale={10.972}
      />
      <group name="Plane141" position={[-82.207, 18.253, -300.726]}>
        <mesh
          name="Plane134_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane134_1.geometry}
          material={materials["Material.126"]}
        />
        <mesh
          name="Plane134_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane134_2.geometry}
          material={materials["Material.127"]}
        />
      </group>
      <group
        name="Plane142"
        position={[467.673, 4.934, 105.996]}
        rotation={[0, 1.571, 0]}
        scale={[1, 1, 1.428]}
      >
        <mesh
          name="Plane136_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane136_1.geometry}
          material={materials["Material.126"]}
        />
        <mesh
          name="Plane136_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane136_2.geometry}
          material={materials["Material.127"]}
        />
      </group>
      <mesh
        name="Plane143"
        castShadow
        receiveShadow
        geometry={nodes.Plane143.geometry}
        material={materials["Material.129"]}
        position={[244.339, 4.857, 447.661]}
        scale={56.051}
      />
      <mesh
        name="Cube010"
        castShadow
        receiveShadow
        geometry={nodes.Cube010.geometry}
        material={materials.GRAY2}
        position={[278.335, 5.01, 398.114]}
        scale={[5.629, 2.888, 5.629]}
      />
      <mesh
        name="Cube012"
        castShadow
        receiveShadow
        geometry={nodes.Cube012.geometry}
        material={materials.GRAY2}
        position={[273.119, 7.94, 451.539]}
        scale={[5.629, 2.888, 5.629]}
      />
      <group
        name="Plane144"
        position={[464.813, 4.589, -21.534]}
        rotation={[-Math.PI, 0, -Math.PI]}
        scale={[0.849, 0.849, 1.213]}
      >
        <mesh
          name="Plane146_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane146_1.geometry}
          material={materials["Material.126"]}
        />
        <mesh
          name="Plane146_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane146_2.geometry}
          material={materials["Material.127"]}
        />
      </group>
      <mesh
        name="Plane145"
        castShadow
        receiveShadow
        geometry={nodes.Plane145.geometry}
        material={materials["Material.119"]}
        position={[464.813, 4.501, -21.534]}
        rotation={[-Math.PI, 0, -Math.PI]}
        scale={[0.849, 0.849, 1.213]}
      />
      <mesh
        name="Plane147"
        castShadow
        receiveShadow
        geometry={nodes.Plane147.geometry}
        material={materials["Material.121"]}
        position={[457.154, 5.306, -19.52]}
        rotation={[-Math.PI, 0, -Math.PI]}
        scale={[0.849, 0.849, 1.213]}
      />
      <mesh
        name="Cube011"
        castShadow
        receiveShadow
        geometry={nodes.Cube011.geometry}
        material={materials["Material.130"]}
        position={[226.802, 5.052, 418.884]}
        scale={[57.609, 2.118, 15.222]}
      />
      <mesh
        name="Cube013"
        castShadow
        receiveShadow
        geometry={nodes.Cube013.geometry}
        material={materials["Material.135"]}
        position={[-258.491, 11.476, -305.336]}
        scale={10.445}
      />
      <mesh
        name="Cube014"
        castShadow
        receiveShadow
        geometry={nodes.Cube014.geometry}
        material={materials["Material.135"]}
        position={[228.627, 5.557, -294.597]}
        scale={11.001}
      />
      <mesh
        name="Plane082"
        castShadow
        receiveShadow
        geometry={nodes.Plane082.geometry}
        material={materials["Material.055"]}
        position={[-817.344, 4.074, 491.81]}
        rotation={[0, -1.571, 0]}
        scale={62.566}
      />
      <group
        name="Plane013"
        position={[552.27, 4.289, 406.037]}
        rotation={[0, -1.223, 0]}
        scale={0.471}
      >
        <mesh
          name="Plane070_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane070_1.geometry}
          material={materials["Material.004"]}
        />
        <mesh
          name="Plane070_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane070_2.geometry}
          material={materials["Material.013"]}
        />
      </group>
      <mesh
        name="Plane021"
        castShadow
        receiveShadow
        geometry={nodes.Plane021.geometry}
        material={materials["Material.004"]}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -1.209, 0]}
        scale={0.471}
      />
      <group
        name="Plane022"
        position={[552.27, 4.289, 199.481]}
        rotation={[0, -1.223, 0]}
        scale={0.471}
      >
        <mesh
          name="Plane071_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane071_1.geometry}
          material={materials["Material.004"]}
        />
        <mesh
          name="Plane071_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane071_2.geometry}
          material={materials["Material.013"]}
        />
      </group>
      <group
        name="Plane023"
        position={[552.27, 4.289, -6.486]}
        rotation={[0, -1.223, 0]}
        scale={0.471}
      >
        <mesh
          name="Plane072_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane072_1.geometry}
          material={materials["Material.004"]}
        />
        <mesh
          name="Plane072_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane072_2.geometry}
          material={materials["Material.013"]}
        />
      </group>
      <group
        name="Plane024"
        position={[552.27, 4.289, 612.821]}
        rotation={[0, -1.223, 0]}
        scale={0.471}
      >
        <mesh
          name="Plane026"
          castShadow
          receiveShadow
          geometry={nodes.Plane026.geometry}
          material={materials["Material.004"]}
        />
        <mesh
          name="Plane026_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane026_1.geometry}
          material={materials["Material.013"]}
        />
      </group>
      <group name="base" position={[406.361, 4.014, 512.699]} scale={90.453}>
        <mesh
          name="Cube"
          castShadow
          receiveShadow
          geometry={nodes.Cube.geometry}
          material={materials["gray-blue"]}
        />
        <lineSegments
          name="Cube_1"
          geometry={nodes.Cube_1.geometry}
          material={materials["gray-blue"]}
        />
      </group>
      <mesh
        name="Cube001"
        castShadow
        receiveShadow
        geometry={nodes.Cube001.geometry}
        material={materials["Material.114"]}
        position={[90.098, 6.69, -49.618]}
        scale={90.453}
      />
      <mesh
        name="Cube004"
        castShadow
        receiveShadow
        geometry={nodes.Cube004.geometry}
        material={materials["Material.114"]}
        position={[159.307, 10.024, -102.993]}
        scale={90.453}
      />
      <mesh
        name="Cube005"
        castShadow
        receiveShadow
        geometry={nodes.Cube005.geometry}
        material={materials["gray-blue"]}
        position={[-451.15, 2.053, -582.427]}
        scale={90.453}
      />
      <mesh
        name="Cube006"
        castShadow
        receiveShadow
        geometry={nodes.Cube006.geometry}
        material={materials.GRAY2}
        position={[406.361, 4.014, 512.699]}
        scale={90.453}
      />
      <mesh
        name="Cube007"
        castShadow
        receiveShadow
        geometry={nodes.Cube007.geometry}
        material={materials["Material.114"]}
        position={[119.472, 9.558, -165.297]}
        scale={90.453}
      />
      <mesh
        name="Cube008"
        castShadow
        receiveShadow
        geometry={nodes.Cube008.geometry}
        material={materials["Material.114"]}
        position={[59.559, 9.558, -165.297]}
        scale={90.453}
      />
      <mesh
        name="Cube015"
        castShadow
        receiveShadow
        geometry={nodes.Cube015.geometry}
        material={materials["Material.114"]}
        position={[406.361, 4.014, 512.699]}
        scale={90.453}
      />
      <mesh
        name="Cube016"
        castShadow
        receiveShadow
        geometry={nodes.Cube016.geometry}
        material={materials["Material.114"]}
        position={[406.361, 4.014, 512.699]}
        scale={90.453}
      />
      <mesh
        name="Plane005"
        castShadow
        receiveShadow
        geometry={nodes.Plane005.geometry}
        material={materials["road-01"]}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -0.032, 0]}
        scale={3.504}
      />
      <mesh
        name="Circle"
        castShadow
        receiveShadow
        geometry={nodes.Circle.geometry}
        material={materials.stone}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -0.582, 0]}
        scale={[6.139, 6.139, 4.704]}
      />
      <mesh
        name="Plane008"
        castShadow
        receiveShadow
        geometry={nodes.Plane008.geometry}
        material={materials["Material.011"]}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -0.582, 0]}
        scale={3.984}
      />
      <mesh
        name="Plane009"
        castShadow
        receiveShadow
        geometry={nodes.Plane009.geometry}
        material={materials.stone}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -0.582, 0]}
        scale={3.984}
      />
      <mesh
        name="Plane012"
        castShadow
        receiveShadow
        geometry={nodes.Plane012.geometry}
        material={materials["Material.013"]}
        position={[406.448, 4.014, 514.51]}
        rotation={[0, -0.676, 0]}
        scale={6.023}
      />
      <mesh
        name="Plane015"
        castShadow
        receiveShadow
        geometry={nodes.Plane015.geometry}
        material={materials["Material.004"]}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, 0.02, 0]}
        scale={2.425}
      />
      <mesh
        name="Plane016"
        castShadow
        receiveShadow
        geometry={nodes.Plane016.geometry}
        material={materials["Material.003"]}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, 0.02, 0]}
        scale={2.425}
      />
      <mesh
        name="rim"
        castShadow
        receiveShadow
        geometry={nodes.rim.geometry}
        material={materials.Material}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -0.582, 0]}
        scale={3.984}
      />
      <mesh
        name="Circle003"
        castShadow
        receiveShadow
        geometry={nodes.Circle003.geometry}
        material={materials.Material}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -0.582, 0]}
        scale={[6.265, 6.265, 4.8]}
      />
      <mesh
        name="Plane006"
        castShadow
        receiveShadow
        geometry={nodes.Plane006.geometry}
        material={materials.Material}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, 0.093, 0]}
        scale={2.425}
      />
      <mesh
        name="Plane010"
        castShadow
        receiveShadow
        geometry={nodes.Plane010.geometry}
        material={materials.stone}
        position={[493.849, 3.924, 599.823]}
        rotation={[0, 0.093, 0]}
        scale={2.425}
      />
      <mesh
        name="Plane018"
        castShadow
        receiveShadow
        geometry={nodes.Plane018.geometry}
        material={materials["Material.009"]}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, 0.093, 0]}
        scale={2.425}
      />
      <mesh
        name="Circle002"
        castShadow
        receiveShadow
        geometry={nodes.Circle002.geometry}
        material={materials.Material}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, 1.237, 0]}
        scale={[6.139, 6.139, 4.704]}
      />
      <mesh
        name="Circle001"
        castShadow
        receiveShadow
        geometry={nodes.Circle001.geometry}
        material={materials.stone}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, 1.24, 0]}
        scale={[6.139, 6.139, 4.704]}
      />
      <mesh
        name="Plane017"
        castShadow
        receiveShadow
        geometry={nodes.Plane017.geometry}
        material={materials.Material}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -1.555, 0]}
        scale={15.798}
      />
      <mesh
        name="Plane019"
        castShadow
        receiveShadow
        geometry={nodes.Plane019.geometry}
        material={materials["Material.007"]}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, -0.655, 0]}
        scale={0.683}
      />
      <mesh
        name="Plane"
        castShadow
        receiveShadow
        geometry={nodes.Plane.geometry}
        material={materials["Material.001"]}
        position={[407.271, 4.014, 512.699]}
        rotation={[0, 0.083, 0]}
        scale={2.398}
      />
      <group
        name="Plane059"
        position={[534.397, 7.685, 286.921]}
        rotation={[-Math.PI, 0, 0]}
        scale={-14.836}
      >
        <mesh
          name="Plane040_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane040_1.geometry}
          material={materials["Material.003"]}
        />
        <mesh
          name="Plane040_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane040_2.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane040_3"
          castShadow
          receiveShadow
          geometry={nodes.Plane040_3.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane060"
        position={[535.07, 4.531, 329.252]}
        rotation={[0, 0.02, 0]}
        scale={2.425}
      >
        <mesh
          name="Plane045_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane045_1.geometry}
          material={materials["Material.004"]}
        />
        <mesh
          name="Plane045_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane045_2.geometry}
          material={materials["Material.007"]}
        />
      </group>
      <mesh
        name="Plane062"
        castShadow
        receiveShadow
        geometry={nodes.Plane062.geometry}
        material={materials["Material.004"]}
        position={[536.238, 4.283, 233.137]}
        rotation={[0, 0.02, 0]}
        scale={2.425}
      />
      <mesh
        name="Plane063"
        castShadow
        receiveShadow
        geometry={nodes.Plane063.geometry}
        material={materials["Material.007"]}
        position={[536.215, 4.318, 233.094]}
        rotation={[0, -0.655, 0]}
        scale={0.683}
      />
      <group
        name="Plane064"
        position={[535.361, 7.306, 194.857]}
        rotation={[0, -0.016, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane066"
          castShadow
          receiveShadow
          geometry={nodes.Plane066.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane066_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane066_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane065"
        position={[535.361, 7.306, 85.061]}
        rotation={[0, -0.016, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane067"
          castShadow
          receiveShadow
          geometry={nodes.Plane067.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane067_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane067_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <mesh
        name="Cylinder001"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder001.geometry}
        material={materials["Material.115"]}
        position={[273.084, 7.888, 330.043]}
        scale={[0.125, 0.137, 0.113]}
      />
      <mesh
        name="Cylinder004"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder004.geometry}
        material={materials["Material.115"]}
        position={[277.39, 7.888, 330.043]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
      <mesh
        name="Plane025"
        castShadow
        receiveShadow
        geometry={nodes.Plane025.geometry}
        material={materials["Material.116"]}
        position={[250.392, 4.067, 300.179]}
        scale={[37.571, 2.685, 2.685]}
      />
      <mesh
        name="Plane027"
        castShadow
        receiveShadow
        geometry={nodes.Plane027.geometry}
        material={materials["Material.130"]}
        position={[250.392, 4.067, 329.37]}
        scale={[37.571, 2.685, 2.685]}
      />
      <mesh
        name="Cylinder005"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder005.geometry}
        material={materials["Material.115"]}
        position={[252.441, 7.888, 330.043]}
        scale={[0.125, 0.137, 0.113]}
      />
      <mesh
        name="Cylinder006"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder006.geometry}
        material={materials["Material.115"]}
        position={[256.747, 7.888, 330.043]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
      <mesh
        name="Cylinder007"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder007.geometry}
        material={materials["Material.115"]}
        position={[231.519, 7.888, 330.043]}
        scale={[0.125, 0.137, 0.113]}
      />
      <mesh
        name="Cylinder008"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder008.geometry}
        material={materials["Material.115"]}
        position={[235.825, 7.888, 330.043]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
      <mesh
        name="Cylinder009"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder009.geometry}
        material={materials["Material.115"]}
        position={[215.758, 7.888, 330.043]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
      <mesh
        name="Cylinder010"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder010.geometry}
        material={materials["Material.115"]}
        position={[189.855, 7.888, 330.043]}
        scale={[0.125, 0.137, 0.113]}
      />
      <mesh
        name="Cylinder011"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder011.geometry}
        material={materials["Material.115"]}
        position={[194.162, 7.888, 330.043]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
      <mesh
        name="Plane028"
        castShadow
        receiveShadow
        geometry={nodes.Plane028.geometry}
        material={materials["Material.130"]}
        position={[167.163, 4.067, 329.37]}
        scale={[37.571, 2.685, 2.685]}
      />
      <mesh
        name="Cylinder012"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder012.geometry}
        material={materials["Material.115"]}
        position={[169.212, 7.888, 330.043]}
        scale={[0.125, 0.137, 0.113]}
      />
      <mesh
        name="Cylinder013"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder013.geometry}
        material={materials["Material.115"]}
        position={[173.519, 7.888, 330.043]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
      <mesh
        name="Cylinder014"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder014.geometry}
        material={materials["Material.115"]}
        position={[148.29, 7.888, 330.043]}
        scale={[0.125, 0.137, 0.113]}
      />
      <mesh
        name="Cylinder015"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder015.geometry}
        material={materials["Material.115"]}
        position={[152.597, 7.888, 330.043]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
      <mesh
        name="Plane029"
        castShadow
        receiveShadow
        geometry={nodes.Plane029.geometry}
        material={materials["Material.116"]}
        position={[167.163, 4.067, 300.179]}
        scale={[37.571, 2.685, 2.685]}
      />
      <mesh
        name="Cylinder055"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder055.geometry}
        material={materials["Material.115"]}
        position={[500.765, 7.438, 605.799]}
        rotation={[0, -0.427, 0]}
        scale={[0.074, 0.08, 0.066]}
      />
      <mesh
        name="Cylinder056"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder056.geometry}
        material={materials["Material.115"]}
        position={[494.129, 7.438, 602.02]}
        rotation={[-Math.PI, 0.432, -Math.PI]}
        scale={[0.074, 0.08, 0.066]}
      />
      <mesh
        name="Cylinder031"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder031.geometry}
        material={materials["Material.115"]}
        position={[654.341, 7.893, 541.033]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.066]}
      />
      <mesh
        name="Cylinder016"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder016.geometry}
        material={materials["Material.115"]}
        position={[654.341, 7.893, 644.046]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.066]}
      />
      <mesh
        name="Cylinder017"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder017.geometry}
        material={materials["Material.115"]}
        position={[654.341, 7.893, 744.215]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.066]}
      />
      <group name="NurbsCurve" position={[241.72, 4.405, 14.333]}>
        <mesh
          name="Mesh"
          castShadow
          receiveShadow
          geometry={nodes.Mesh.geometry}
          material={materials["Material.120"]}
        />
        <mesh
          name="Mesh_1"
          castShadow
          receiveShadow
          geometry={nodes.Mesh_1.geometry}
          material={materials["grass.001"]}
        />
        <mesh
          name="Mesh_2"
          castShadow
          receiveShadow
          geometry={nodes.Mesh_2.geometry}
          material={materials["Material.118"]}
        />
        <mesh
          name="Mesh_3"
          castShadow
          receiveShadow
          geometry={nodes.Mesh_3.geometry}
          material={materials["SVGMat.007"]}
        />
        <lineSegments
          name="Mesh_4"
          geometry={nodes.Mesh_4.geometry}
          material={materials["Material.120"]}
        />
      </group>
      <group
        name="Plane033"
        position={[217.665, 7.809, -6.428]}
        rotation={[0, 1.319, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane082_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane082_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane082_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane082_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane034"
        position={[173.226, 7.002, -37.436]}
        rotation={[0, -0.499, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane083"
          castShadow
          receiveShadow
          geometry={nodes.Plane083.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane083_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane083_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane035"
        position={[212.927, 7.809, 0.083]}
        rotation={[0, 0.479, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane084"
          castShadow
          receiveShadow
          geometry={nodes.Plane084.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane084_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane084_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane036"
        position={[209.655, 7.809, 5.321]}
        rotation={[0, -0.794, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane085"
          castShadow
          receiveShadow
          geometry={nodes.Plane085.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane085_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane085_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane037"
        position={[213.259, 7.809, -9.498]}
        rotation={[0, 0.132, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane086"
          castShadow
          receiveShadow
          geometry={nodes.Plane086.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane086_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane086_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane038"
        position={[208.666, 7.809, -3.823]}
        rotation={[0, 0.819, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane087"
          castShadow
          receiveShadow
          geometry={nodes.Plane087.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane087_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane087_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane039"
        position={[147.399, 7.002, -37.242]}
        rotation={[0, 1.291, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane088"
          castShadow
          receiveShadow
          geometry={nodes.Plane088.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane088_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane088_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane040"
        position={[205.249, 7.809, 2.25]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane089"
          castShadow
          receiveShadow
          geometry={nodes.Plane089.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane089_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane089_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane041"
        position={[196.304, 7.809, -18.71]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane090"
          castShadow
          receiveShadow
          geometry={nodes.Plane090.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane090_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane090_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane042"
        position={[196.438, 7.809, 26.006]}
        rotation={[-Math.PI, 0.553, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane091"
          castShadow
          receiveShadow
          geometry={nodes.Plane091.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane091_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane091_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane043"
        position={[196.438, 7.809, 52.616]}
        rotation={[0, -0.763, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane092"
          castShadow
          receiveShadow
          geometry={nodes.Plane092.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane092_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane092_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane044"
        position={[196.438, 7.809, 37.298]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane095"
          castShadow
          receiveShadow
          geometry={nodes.Plane095.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane095_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane095_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane045"
        position={[196.171, 7.809, 12.694]}
        rotation={[0, 0.175, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane096"
          castShadow
          receiveShadow
          geometry={nodes.Plane096.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane096_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane096_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane046"
        position={[196.438, 7.809, -52.487]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane097"
          castShadow
          receiveShadow
          geometry={nodes.Plane097.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane097_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane097_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane047"
        position={[196.571, 7.809, 78.957]}
        rotation={[-Math.PI, 0.553, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane098"
          castShadow
          receiveShadow
          geometry={nodes.Plane098.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane098_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane098_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane050"
        position={[284.329, 7.809, 79.824]}
        rotation={[0, -0.763, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane099"
          castShadow
          receiveShadow
          geometry={nodes.Plane099.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane099_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane099_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane051"
        position={[282.848, 7.809, -49.547]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane102"
          castShadow
          receiveShadow
          geometry={nodes.Plane102.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane102_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane102_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane053"
        position={[196.304, 7.809, -33.529]}
        rotation={[0, 0.175, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane103"
          castShadow
          receiveShadow
          geometry={nodes.Plane103.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane103_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane103_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <mesh
        name="Plane068"
        castShadow
        receiveShadow
        geometry={nodes.Plane068.geometry}
        material={materials["SVGMat.007"]}
        position={[289.005, 4.014, 27.869]}
        scale={7.496}
      />
      <mesh
        name="Plane069"
        castShadow
        receiveShadow
        geometry={nodes.Plane069.geometry}
        material={materials["Material.118"]}
        position={[221.605, 4.16, -185.22]}
        scale={15.202}
      />
      <group
        name="Plane070"
        position={[189.996, 4.159, -95.227]}
        scale={18.697}
      >
        <mesh
          name="Plane107"
          castShadow
          receiveShadow
          geometry={nodes.Plane107.geometry}
          material={materials.grass}
        />
        <mesh
          name="Plane107_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane107_1.geometry}
          material={materials.gray}
        />
      </group>
      <group
        name="Plane071"
        position={[211.748, 7.002, -98.018]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane006_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane006_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane006_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane006_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane072"
        position={[211.629, 7.809, 42.844]}
        rotation={[-Math.PI, 0.553, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane008_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane008_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane008_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane008_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane073"
        position={[211.882, 7.002, -88.272]}
        rotation={[0, -0.763, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane012_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane012_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane012_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane012_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane074"
        position={[237.645, 7.809, -52.97]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane014"
          castShadow
          receiveShadow
          geometry={nodes.Plane014.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane014_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane014_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane075"
        position={[211.615, 7.002, -79.061]}
        rotation={[0, 0.175, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane024_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane024_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane024_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane024_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane076"
        position={[184.614, 7.138, -74.034]}
        rotation={[-Math.PI, 0.438, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane025_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane025_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane025_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane025_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane077"
        position={[197.017, 7.138, -123.32]}
        rotation={[Math.PI, -1.017, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane027_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane027_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane027_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane027_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane078"
        position={[194.359, 7.138, -74.168]}
        rotation={[0, 0.807, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane028_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane028_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane028_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane028_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane079"
        position={[173.219, 7.138, -111.353]}
        rotation={[-Math.PI, 0.438, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane029_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane029_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane029_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane029_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane080"
        position={[203.571, 7.138, -73.901]}
        rotation={[-Math.PI, 1.396, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane030_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane030_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane030_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane030_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <mesh
        name="Cylinder018"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder018.geometry}
        material={materials["Material.115"]}
        position={[-283.313, 8.146, 159.915]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.061]}
      />
      <mesh
        name="Cylinder019"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder019.geometry}
        material={materials["Material.115"]}
        position={[-612.791, 6.427, -138.391]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.07]}
      />
      <mesh
        name="Cylinder020"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder020.geometry}
        material={materials["Material.115"]}
        position={[-631.903, 6.427, -138.676]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.07]}
      />
      <mesh
        name="Cylinder021"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder021.geometry}
        material={materials["Material.115"]}
        position={[-648.037, 6.427, -131.493]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.049]}
      />
      <mesh
        name="Cylinder022"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder022.geometry}
        material={materials["Material.115"]}
        position={[-665.653, 6.548, -147.459]}
        rotation={[-Math.PI, 0.619, -Math.PI]}
        scale={[0.074, 0.08, 0.049]}
      />
      <group
        name="Plane124"
        position={[148, 6.634, 300.09]}
        rotation={[0, -1.16, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane126_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane126_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane126_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane126_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane125"
        position={[168.034, 6.634, 300.365]}
        rotation={[0, -0.366, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane127_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane127_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane127_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane127_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane126"
        position={[187.794, 6.634, 300.365]}
        rotation={[Math.PI, -1.001, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane128_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane128_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane128_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane128_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane127"
        position={[230.333, 6.634, 300.09]}
        rotation={[0, -1.16, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane129_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane129_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane129_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane129_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane128"
        position={[250.368, 6.634, 300.365]}
        rotation={[0, 0.331, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane130_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane130_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane130_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane130_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane129"
        position={[270.128, 6.634, 300.365]}
        rotation={[0, -1.16, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane131_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane131_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane131_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane131_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane135"
        position={[36.916, 12.946, -189.243]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane140_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane140_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane140_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane140_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane136"
        position={[37.05, 12.946, -182.953]}
        rotation={[-Math.PI, 0.553, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane141_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane141_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane141_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane141_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane137"
        position={[37.05, 12.946, -176.464]}
        rotation={[0, -0.763, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane142_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane142_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane142_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane142_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane138"
        position={[71.451, 12.946, -189.243]}
        rotation={[0, 1.133, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane143_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane143_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane143_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane143_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane139"
        position={[71.585, 12.946, -182.953]}
        rotation={[-Math.PI, 0.553, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane144_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane144_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane144_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane144_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane140"
        position={[71.585, 12.946, -176.464]}
        rotation={[0, -0.763, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane145_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane145_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane145_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane145_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <mesh
        name="Cylinder023"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder023.geometry}
        material={materials["Material.115"]}
        position={[225.265, 8.744, 421.709]}
        rotation={[0, 1.571, 0]}
        scale={[0.154, 0.169, 0.254]}
      />
      <mesh
        name="Cylinder024"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder024.geometry}
        material={materials["Material.115"]}
        position={[225.265, 8.744, 416.392]}
        rotation={[Math.PI, -1.571, 0]}
        scale={[-0.154, -0.169, -0.254]}
      />
      <group
        name="Plane146"
        position={[534.397, 7.849, -0.874]}
        rotation={[-Math.PI, 0, 0]}
        scale={-14.836}
      >
        <mesh
          name="Plane150_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane150_1.geometry}
          material={materials["Material.003"]}
        />
        <mesh
          name="Plane150_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane150_2.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane150_3"
          castShadow
          receiveShadow
          geometry={nodes.Plane150_3.geometry}
          material={materials.Trunk}
        />
        <mesh
          name="Plane150_4"
          castShadow
          receiveShadow
          geometry={nodes.Plane150_4.geometry}
          material={materials["Material.117"]}
        />
      </group>
      <mesh
        name="sand"
        castShadow
        receiveShadow
        geometry={nodes.sand.geometry}
        material={materials["gray-blue"]}
        position={[85.583, 3.994, 544.593]}
        scale={3342.734}
      />
      <group
        name="road"
        position={[-1387.158, 4.674, 1337.534]}
        scale={3342.734}
      >
        <mesh
          name="Curve001"
          castShadow
          receiveShadow
          geometry={nodes.Curve001.geometry}
          material={materials["SVGMat.007"]}
        />
        <points
          name="Curve001_1"
          geometry={nodes.Curve001_1.geometry}
          material={materials["SVGMat.007"]}
        />
      </group>
      <mesh
        name="Plane048"
        castShadow
        receiveShadow
        geometry={nodes.Plane048.geometry}
        material={materials["Material.004"]}
        position={[406.656, 4.014, 514.542]}
        rotation={[0, -1.149, 0]}
        scale={0.469}
      />
      <mesh
        name="Plane049"
        castShadow
        receiveShadow
        geometry={nodes.Plane049.geometry}
        material={materials["Material.004"]}
        position={[406.656, 4.014, 514.542]}
        rotation={[0, -1.149, 0]}
        scale={0.469}
      />
      <mesh
        name="Plane052"
        castShadow
        receiveShadow
        geometry={nodes.Plane052.geometry}
        material={materials["Material.004"]}
        position={[406.656, 4.014, 514.542]}
        rotation={[0, -1.149, 0]}
        scale={0.469}
      />
      <mesh
        name="Plane054"
        castShadow
        receiveShadow
        geometry={nodes.Plane054.geometry}
        material={materials["Material.004"]}
        position={[406.656, 4.014, 514.542]}
        rotation={[0, -1.149, 0]}
        scale={0.469}
      />
      <mesh
        name="Plane055"
        castShadow
        receiveShadow
        geometry={nodes.Plane055.geometry}
        material={materials["Material.004"]}
        position={[406.656, 4.014, 514.542]}
        rotation={[0, -1.149, 0]}
        scale={0.469}
      />
      <mesh
        name="Plane056"
        castShadow
        receiveShadow
        geometry={nodes.Plane056.geometry}
        material={materials["Material.004"]}
        position={[406.656, 4.014, 514.542]}
        rotation={[0, -1.149, 0]}
        scale={0.469}
      />
      <mesh
        name="Plane057"
        castShadow
        receiveShadow
        geometry={nodes.Plane057.geometry}
        material={materials["Material.004"]}
        position={[406.656, 4.014, 514.542]}
        rotation={[0, -1.149, 0]}
        scale={0.469}
      />
      <group
        name="Crown"
        position={[406.361, 4.014, 512.699]}
        rotation={[Math.PI, 0, Math.PI]}
        scale={0.435}
      >
        <mesh
          name="Crown_1"
          castShadow
          receiveShadow
          geometry={nodes.Crown_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Crown_2"
          castShadow
          receiveShadow
          geometry={nodes.Crown_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Crown001"
        position={[449.463, 7.318, 624.558]}
        rotation={[Math.PI, -0.06, Math.PI]}
        scale={0.435}
      >
        <mesh
          name="Crown001_1"
          castShadow
          receiveShadow
          geometry={nodes.Crown001_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Crown001_2"
          castShadow
          receiveShadow
          geometry={nodes.Crown001_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Crown002"
        position={[406.361, 4.014, 512.699]}
        rotation={[Math.PI, 0, Math.PI]}
        scale={0.435}
      >
        <mesh
          name="Crown002_1"
          castShadow
          receiveShadow
          geometry={nodes.Crown002_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Crown002_2"
          castShadow
          receiveShadow
          geometry={nodes.Crown002_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane148"
        position={[137.254, 7.304, -368.717]}
        rotation={[0, 1.571, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane148_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane148_1.geometry}
          material={materials["Material.003"]}
        />
        <mesh
          name="Plane148_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane148_2.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane148_3"
          castShadow
          receiveShadow
          geometry={nodes.Plane148_3.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane149"
        position={[11.821, 7.304, -368.717]}
        rotation={[0, 1.571, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane151_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane151_1.geometry}
          material={materials["Material.003"]}
        />
        <mesh
          name="Plane151_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane151_2.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane151_3"
          castShadow
          receiveShadow
          geometry={nodes.Plane151_3.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane150"
        position={[-200.824, 7.304, -368.717]}
        rotation={[0, 1.571, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane152_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane152_1.geometry}
          material={materials["Material.003"]}
        />
        <mesh
          name="Plane152_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane152_2.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane152_3"
          castShadow
          receiveShadow
          geometry={nodes.Plane152_3.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane151"
        position={[361.89, 4.876, 146.76]}
        rotation={[0, 1.571, 0]}
        scale={[1, 1, 1.593]}
      >
        <mesh
          name="Plane153_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane153_1.geometry}
          material={materials["Material.126"]}
        />
        <mesh
          name="Plane153_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane153_2.geometry}
          material={materials["Material.127"]}
        />
      </group>
      <mesh
        name="Cube017"
        castShadow
        receiveShadow
        geometry={nodes.Cube017.geometry}
        material={materials["Material.135"]}
        position={[38.451, 4.014, -229.368]}
        scale={11.001}
      />
      <group
        name="Plane152"
        position={[155.478, 7.306, -234.904]}
        rotation={[0, 1.571, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane154_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane154_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane154_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane154_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane153"
        position={[139.346, 7.306, -234.904]}
        rotation={[0, 0.248, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane155_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane155_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane155_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane155_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane154"
        position={[121.87, 7.306, -234.904]}
        rotation={[0, 1.059, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane156_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane156_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane156_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane156_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane155"
        position={[105.2, 7.306, -234.904]}
        rotation={[0, 0.248, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane157_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane157_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane157_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane157_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane156"
        position={[87.724, 7.306, -234.904]}
        rotation={[0, 1.059, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane158_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane158_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane158_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane158_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane157"
        position={[72.668, 7.306, -234.904]}
        rotation={[0, 0.248, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane159_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane159_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane159_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane159_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane158"
        position={[60.301, 7.306, -237.288]}
        rotation={[0, 1.059, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane160_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane160_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane160_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane160_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane159"
        position={[71.951, 7.306, -223.208]}
        rotation={[0, -Math.PI / 2, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane161_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane161_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane161_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane161_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane160"
        position={[88.083, 7.306, -223.208]}
        rotation={[Math.PI, -0.248, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane162_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane162_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane162_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane162_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane161"
        position={[105.559, 7.306, -223.208]}
        rotation={[Math.PI, -1.059, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane163_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane163_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane163_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane163_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane162"
        position={[122.228, 7.306, -223.208]}
        rotation={[Math.PI, -0.248, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane164_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane164_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane164_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane164_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane163"
        position={[139.704, 7.306, -223.208]}
        rotation={[Math.PI, -1.059, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane165_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane165_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane165_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane165_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane164"
        position={[154.761, 7.306, -223.208]}
        rotation={[Math.PI, -0.248, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane166_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane166_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane166_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane166_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane165"
        position={[23.064, 7.306, -241.724]}
        rotation={[0, 1.059, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane167_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane167_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane167_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane167_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane166"
        position={[22.392, 7.306, -218.065]}
        rotation={[0, -0.622, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane168_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane168_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane168_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane168_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane167"
        position={[60.57, 7.306, -221.963]}
        rotation={[-Math.PI, 1.024, -Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane169_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane169_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane169_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane169_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane168"
        position={[171.606, 7.306, -223.208]}
        rotation={[0, -Math.PI / 2, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane170_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane170_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane170_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane170_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane169"
        position={[187.738, 7.306, -223.208]}
        rotation={[Math.PI, -0.248, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane171_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane171_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane171_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane171_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane170"
        position={[205.214, 7.306, -223.208]}
        rotation={[Math.PI, -1.059, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane172_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane172_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane172_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane172_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane171"
        position={[221.884, 7.306, -223.208]}
        rotation={[Math.PI, -0.248, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane173_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane173_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane173_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane173_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane172"
        position={[239.36, 7.306, -223.208]}
        rotation={[Math.PI, -1.059, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane174_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane174_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane174_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane174_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane173"
        position={[254.416, 7.306, -223.208]}
        rotation={[Math.PI, -0.248, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane175_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane175_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane175_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane175_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane174"
        position={[270.255, 7.306, -223.208]}
        rotation={[Math.PI, -1.059, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane176_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane176_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane176_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane176_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group
        name="Plane175"
        position={[285.311, 7.306, -223.208]}
        rotation={[Math.PI, -0.248, Math.PI]}
        scale={14.836}
      >
        <mesh
          name="Plane177_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane177_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane177_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane177_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <mesh
        name="Plane178"
        castShadow
        receiveShadow
        geometry={nodes.Plane178.geometry}
        material={materials["Material.006"]}
        position={[13.969, 9.559, -199.827]}
        scale={[13.074, 10.972, 1.854]}
      />
      <group
        name="Circle004"
        position={[40.929, 4.064, -229.264]}
        scale={6.339}
      >
        <mesh
          name="Circle001_1"
          castShadow
          receiveShadow
          geometry={nodes.Circle001_1.geometry}
          material={materials["Material.136"]}
        />
        <mesh
          name="Circle001_2"
          castShadow
          receiveShadow
          geometry={nodes.Circle001_2.geometry}
          material={materials["Material.137"]}
        />
      </group>
      <mesh
        name="road001"
        castShadow
        receiveShadow
        geometry={nodes.road001.geometry}
        material={materials["SVGMat.007"]}
        position={[-247.821, 4.064, -29.465]}
        scale={3342.734}
      />
      <mesh
        name="road002"
        castShadow
        receiveShadow
        geometry={nodes.road002.geometry}
        material={materials["SVGMat.007"]}
        position={[-191.483, 4.064, 67.425]}
        rotation={[0, 0.012, 0]}
        scale={[3342.735, 3342.734, 3342.735]}
      />
      <mesh
        name="Cube018"
        castShadow
        receiveShadow
        geometry={nodes.Cube018.geometry}
        material={materials["gray-blue"]}
        position={[-164.057, 3.719, -1.474]}
        scale={90.453}
      />
      <mesh
        name="Cube019"
        castShadow
        receiveShadow
        geometry={nodes.Cube019.geometry}
        material={materials["Material.138"]}
        position={[-620.787, 3.99, 13.76]}
        scale={[13.287, 15.238, 74.147]}
      />
      <mesh
        name="Cube020"
        castShadow
        receiveShadow
        geometry={nodes.Cube020.geometry}
        material={materials["Material.140"]}
        position={[-655.627, 7.159, -24.132]}
        scale={[13.287, 15.238, 74.147]}
      />
      <mesh
        name="Cube021"
        castShadow
        receiveShadow
        geometry={nodes.Cube021.geometry}
        material={materials["Material.139"]}
        position={[-637.933, 4.064, 8.372]}
      />
      <mesh
        name="Cylinder025"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder025.geometry}
        material={materials["Material.115"]}
        position={[-639.644, 7.79, -21.009]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.061]}
      />
      <mesh
        name="Cylinder026"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder026.geometry}
        material={materials["Material.115"]}
        position={[-639.644, 7.79, 18.209]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.061]}
      />
      <mesh
        name="Cylinder027"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder027.geometry}
        material={materials["Material.115"]}
        position={[-639.644, 7.79, 56.593]}
        rotation={[Math.PI, -0.017, Math.PI]}
        scale={[0.074, 0.08, 0.061]}
      />
      <mesh
        name="Cylinder028"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder028.geometry}
        material={materials["Material.115"]}
        position={[-676.985, 7.79, 56.871]}
        rotation={[0, 0.017, 0]}
        scale={[0.074, 0.08, 0.061]}
      />
      <mesh
        name="Cylinder029"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder029.geometry}
        material={materials["Material.115"]}
        position={[-676.985, 7.79, 17.653]}
        rotation={[0, 0.017, 0]}
        scale={[0.074, 0.08, 0.061]}
      />
      <mesh
        name="Cylinder030"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder030.geometry}
        material={materials["Material.115"]}
        position={[-676.985, 7.79, -20.731]}
        rotation={[0, 0.017, 0]}
        scale={[0.074, 0.08, 0.061]}
      />
      <mesh
        name="Cube022"
        castShadow
        receiveShadow
        geometry={nodes.Cube022.geometry}
        material={materials["Material.141"]}
        position={[-657.78, 4.272, 17.492]}
      />
      <group name="Cube002" position={[250.601, 3.992, 252.593]} scale={35.491}>
        <mesh
          name="Cube012_1"
          castShadow
          receiveShadow
          geometry={nodes.Cube012_1.geometry}
          material={materials["Material.146"]}
        />
        <mesh
          name="Cube012_2"
          castShadow
          receiveShadow
          geometry={nodes.Cube012_2.geometry}
          material={materials["Material.147"]}
        />
      </group>
      <mesh
        name="Plane030"
        castShadow
        receiveShadow
        geometry={nodes.Plane030.geometry}
        material={materials["Material.004"]}
        position={[206.527, 4.283, 148.852]}
        rotation={[0, 0.02, 0]}
        scale={2.425}
      />
      <group
        name="Plane031"
        position={[205.65, 7.306, 110.572]}
        rotation={[0, -0.016, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane002"
          castShadow
          receiveShadow
          geometry={nodes.Plane002.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane002_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane002_1.geometry}
          material={materials.Trunk}
        />
      </group>
      <group name="Cube023" position={[178.89, 3.992, 252.293]} scale={35.491}>
        <mesh
          name="Cube028"
          castShadow
          receiveShadow
          geometry={nodes.Cube028.geometry}
          material={materials["Material.146"]}
        />
        <mesh
          name="Cube028_1"
          castShadow
          receiveShadow
          geometry={nodes.Cube028_1.geometry}
          material={materials["Material.147"]}
        />
      </group>
      <mesh
        name="Plane032"
        castShadow
        receiveShadow
        geometry={nodes.Plane032.geometry}
        material={materials["Material.004"]}
        position={[195.9, 4.283, 271.371]}
        rotation={[0, 0.02, 0]}
        scale={2.425}
      />
      <group
        name="Plane061"
        position={[195.023, 7.306, 233.091]}
        rotation={[0, -0.016, 0]}
        scale={14.836}
      >
        <mesh
          name="Plane009_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane009_1.geometry}
          material={materials.Crown}
        />
        <mesh
          name="Plane009_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane009_2.geometry}
          material={materials.Trunk}
        />
      </group>
      <group name="Plane176" position={[162.096, 4.159, 75.288]} scale={13.309}>
        <mesh
          name="Plane016_1"
          castShadow
          receiveShadow
          geometry={nodes.Plane016_1.geometry}
          material={materials.grass}
        />
        <mesh
          name="Plane016_2"
          castShadow
          receiveShadow
          geometry={nodes.Plane016_2.geometry}
          material={materials.gray}
        />
      </group>
      <mesh
        name="Cylinder032"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder032.geometry}
        material={materials["Material.115"]}
        position={[171.165, 7.888, 148.831]}
        scale={[0.125, 0.137, 0.113]}
      />
      <mesh
        name="Cylinder033"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder033.geometry}
        material={materials["Material.115"]}
        position={[175.471, 7.888, 148.831]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
      <mesh
        name="Plane177"
        castShadow
        receiveShadow
        geometry={nodes.Plane177.geometry}
        material={materials["Material.130"]}
        position={[148.473, 4.067, 148.158]}
        scale={[37.571, 2.685, 2.685]}
      />
      <mesh
        name="Cylinder034"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder034.geometry}
        material={materials["Material.115"]}
        position={[150.522, 7.888, 148.831]}
        scale={[0.125, 0.137, 0.113]}
      />
      <mesh
        name="Cylinder035"
        castShadow
        receiveShadow
        geometry={nodes.Cylinder035.geometry}
        material={materials["Material.115"]}
        position={[154.828, 7.888, 148.831]}
        rotation={[-Math.PI, 0, 0]}
        scale={[-0.125, -0.137, -0.113]}
      />
    </motion.group>
  );
}

useGLTF.preload("/2024-demo.glb");
