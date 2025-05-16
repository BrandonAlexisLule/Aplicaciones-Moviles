import app from '@/credenciales'
import { useRouter } from 'expo-router'
import { getAuth, signInWithEmailAndPassword } from 'firebase/auth'
import React, { useState } from 'react'
import {
  Alert,
  Image,
  Keyboard,
  KeyboardAvoidingView,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TextInput,
  TouchableOpacity,
  TouchableWithoutFeedback,
  View
} from 'react-native'


const auth = getAuth(app)
const logo = require('@/assets/images/verduras.jpg')

export default function Index() {

  const [email, setEmail] = useState('')
  const [password, setPassword] = useState('')
  const router = useRouter()

  const login = async() =>{
    try {
      await signInWithEmailAndPassword(auth, email, password)
      Alert.alert('Iniciando sesión', 'Accediendo ...')
      router.replace('/busqueda_alimentos')
    } catch (error) {
      console.log(error)
      Alert.alert('Advertencia', 'No has escrito nada')
    }
  }

  return (
    <KeyboardAvoidingView
      behavior={Platform.OS === 'ios' ? 'padding' : 'height'}
      style={{ flex: 1 }}
      keyboardVerticalOffset={Platform.OS === 'ios' ? 0 : 0}>
      <TouchableWithoutFeedback onPress={Keyboard.dismiss}>
      <ScrollView
        style={styles.contenedor}
        keyboardShouldPersistTaps='handled'
        contentContainerStyle={{
          flexGrow: 1,
          justifyContent: 'center'
        }}>
        <View>
          <Text style={styles.textoLogin}>Better Light Foods</Text>
          <View style={styles.logo}>
            <Image source={logo} style={styles.tamanio}/>
          </View>

          <View style={styles.tarjeta}>
            <View style={styles.cajaTexto}>
              <TextInput placeholder='Escriba su correo electrónico' onChangeText={(text)=>setEmail(text)}/>
            </View>

            <View style={styles.cajaTexto}>
              <TextInput placeholder='Escriba su contraseña' secureTextEntry={true} onChangeText={(text)=>setPassword(text)}/>
            </View> 

            <View style={styles.padreBoton}>
              <View style={styles.separarBotonesDeInputs}>
                <TouchableOpacity style={styles.cajaBoton} onPress={login}>
                  <Text style={styles.textoBoton}>Iniciar sesión</Text>
                </TouchableOpacity>
              </View>

              <View style={styles.separarBotonesDeInputs2}>
                <TouchableOpacity style={styles.cajaBoton} onPress={() => router.push('/registro')}>
                  <Text style={styles.textoBoton}>Registrarse</Text>
                </TouchableOpacity>
              </View>
              
            </View>
          </View>
          <View style={styles.footer}>
            <Text style={styles.legal}>Términos y condiciones ● Política de privacidad</Text>
            <Text style={styles.legal}>Uso de Cookies ● Better Light Foods New App, Mayo 2025® </Text>
          </View>
        </View>
      </ScrollView>
      </TouchableWithoutFeedback>
    </KeyboardAvoidingView>
  )
}

const styles = StyleSheet.create({
  separarBotonesDeInputs:{
    marginTop: 40
  },
  separarBotonesDeInputs2:{
    marginBottom: 30
  },
  contenedor:{
    backgroundColor: '#ccd5ae', //color de fondo de la app
    flex: 1 //se ajusta todo el contenedor a la pantalla
  },
  errorMensaje:{
    padding: 4,
    color: 'red'
  },
  textoLogin:{ //logo de empresa
    color: '#414833', //color del texto
    fontWeight: 'bold',
    marginTop: '20%',
    textAlign: 'center',
    fontSize: 40
  },

  tarjeta:{
    margin: 20,
    backgroundColor: 'white',
    borderRadius: 20,
    width: '90%',
    padding: 10,
    shadowColor: '#000',
    shadowOffset:{
      width: 0,
      height: 2
    },
    shadowOpacity: 0.25,
    shadowRadius: 4,
    elevation: 5
  },
  cajaTexto:{
    paddingVertical: 15,
    paddingHorizontal: 10,
    backgroundColor: '#ccd5ae40',
    borderRadius: 10,
    marginVertical: 10
  },
  padreBoton:{
    flexDirection: 'column',
    gap: 10,
  },
  cajaBoton:{
    backgroundColor: '#414833',
    borderRadius: 10,
    paddingVertical: 15,
    paddingHorizontal: 10,
    width: '100%'
  },
  textoBoton: {
    textAlign: 'center',
    color: 'white',
    fontWeight: 'bold',
    fontSize: 16
  },
  logo:{
    alignItems: 'center',
    
  },
  tamanio:{
    width: 100, 
    height: 100,
    borderRadius: 20,
    marginVertical: 30
  },
  footer:{
    padding: 10,
    backgroundColor: '#ccd5ae40'
  },
  legal:{
    color: '#414833',
    textAlign: 'center'
  }

})