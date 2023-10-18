import {
  Modal,
  Alert,
  StyleSheet,
  View,
  Pressable,
  Image
} from 'react-native'
import { useState } from "react";
import NuevoPresupuesto from "./components/NuevoPresupuesto";
import ControlPresupuesto from "./components/ControlPresupuesto";
import Header from "./components/Header";
import FormularioGasto from './components/FormularioGasto';


export default function App(){

  const [presupuesto, setPresupuesto] = useState(0)
  const [isPresupuestovalido, setisPresupuestovalido] = useState(false)
  const [gastos, setGastos] = useState([])
  const [modal, setModal] = useState(false)


  {/**Creamos un handleNuevoPresupuesto para validar que el valor numérico sea mayor a 0. */}
  const handleNuevoPresupuesto = (presupuesto) => {
    if(Number(presupuesto > 0)){
      /**Cuando el presupuesto sea válido, va a regresar un verdadero. */
      setisPresupuestovalido(true)
      console.log('presupuesto valido')
    }else{
      Alert.alert('Error', 'El presupuesto debe ser mayor a 0')
    }
  }


  return (
    <View style={styles.container}>
      <View style={styles.header}>
        <Header/>
        {/**Cuando sea presupuesto valido se va a quitar la cartita y se va a regresar a la pantalla principal de presupuesto */}

        {isPresupuestovalido ? (<ControlPresupuesto presupuesto={presupuesto}/>) :
        (<NuevoPresupuesto presupuesto={presupuesto} gastos={gastos} setPresupuesto={setPresupuesto} handleNuevoPresupuesto={handleNuevoPresupuesto}/>)} 
      </View>
      
      {modal && (<Modal animationType='slide'
        visible={modal}><FormularioGasto setModal={setModal}/></Modal>
      )}

      {isPresupuestovalido && (
        <Pressable
          onPress={() => setModal(!modal)}>
          {/**<Image style={styles.imagen} source={require('./assets/img/add.png')} />  */}
        </Pressable> 
      )}
    </View>
  )
}


{/**Este backgroundColor del objeto header pinta todo el componente. */}
const styles = StyleSheet.create({ 
  container:{
    flex:1,
    backgroundColor: '#edf6f9'
  },
  
  header:{
    
    backgroundColor: '#fff' 
  },
  position:{
    width: 60,
    height: 60,
    position: 'absolute',
    top: 100,
    right: 20
  }

  

});


