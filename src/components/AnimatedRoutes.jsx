 import { Route, Routes, useLocation } from 'react-router-dom'
import Home from '../pages/Home'
import BuildingView from '../pages/BuildingView'
import { AnimatePresence } from 'framer-motion'

const AnimatedRoutes = () => {

    const location = useLocation();

  return (
    <div> 
        <AnimatePresence mode='wait'>
            <Routes location={location} key={location.pathname}>
                    <Route path="/" element={<Home />} />
                    <Route path="/building" element={<BuildingView />} />
            </Routes>
        </AnimatePresence>
    </div>
  )
}

export default AnimatedRoutes