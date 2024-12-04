import { BrowserRouter, Routes, Route } from 'react-router-dom';
import './App.css';
import Header from './componentes/Header';
import Nav from './componentes/Nav';
import Footer from './componentes/Footer';

import HomePage from './pages/HomePage';
import AtraccionesPage from './pages/AtraccionesPage';
import GaleriaPage from './pages/GaleriaPage';
import NosotrosPage from './pages/NosotrosPage';
import ServiciosPage from './pages/ServiciosPage';
import NovedadesPage from './pages/NovedadesPage';
import ContactoPage from './pages/ContactoPage';


function App() {
  return (
    <div className="App">
      <Header/>
      <BrowserRouter>
      <Nav/>
      <Routes>
        <Route path='/' element={<HomePage/>} />
        <Route path='/nosotros' element={<NosotrosPage/>} />
        <Route path='/galeria' element={<GaleriaPage/>} />
        <Route path='/servicios' element={<ServiciosPage/>} />
        <Route path='/atracciones' element={<AtraccionesPage/>} />
        <Route path='/novedades' element={<NovedadesPage/>} />
        <Route path='/contacto' element={<ContactoPage/>} />
      </Routes>

      </BrowserRouter>
      
      <Footer/>
    </div>
  );
}

export default App;
