import { View, Text, TouchableOpacity, StyleSheet, Modal, Pressable, Alert} from 'react-native'
import React, { useEffect, useState } from 'react'
import { router, Stack, useLocalSearchParams, useRouter } from 'expo-router'
import Ionicons from '@expo/vector-icons/Ionicons'
import { getAuth, signOut } from 'firebase/auth'

export default function _layout() {

    const router = useRouter()
    const [modalVisible, setModalVisible] = useState(false)
    const [mensaje, setMensaje] = useState('')
    const [colorMensaje, setColorMensaje] = useState('')
  
    
    const logout = async () => {
      try {
        const auth = getAuth()
        await signOut(auth)
        router.replace({
            pathname: '/',
            params: { logout : 'true'}
        })
        Alert.alert('cerrando sesión')
      } catch (error) {
        console.log('Error al cerrar sesión')
      }
    }

    


  
  return (
    <>
        <Stack>

        {/**Pantalla con el buscador y los alimentos solicitados*/}
        <Stack.Screen
            name='busqueda_alimentos'
            options={{
                title: 'Alimentos',
                headerStyle: {
                    backgroundColor: '#414833' //fondo del header
                },
                headerTintColor: '#fff',
                headerRight:() => (
                    <View style={{
                        flexDirection: 'row',
                        }}>
                        <TouchableOpacity onPress={() => {
                            router.push('/favoritos')
                             //se cierra sesión de forma correcta
                        }}>
                            <Ionicons name='heart' size={24} color='#ccd5ae' style={estilos.separar}/>
                        </TouchableOpacity>
                        <TouchableOpacity 
                            onPress={() => 
                                setModalVisible(true)
                            } 
                            style={{ marginRight: 10 }}>
                            <Ionicons name='ellipsis-vertical' size={24} color='#ccd5ae'/>
                            
                        </TouchableOpacity>
                    </View>
                ),             
            }} />

        {/**Pantalla para presionar cualquier alimento para visualizar los detalles*/}
        <Stack.Screen
            name='alimentos/[id]'
            options={{
                title: 'Detalles del alimento',
                headerStyle:{
                    backgroundColor: '#414833'
                },
                headerTintColor: '#fff', //color del ícono regresar
                headerBackButtonDisplayMode: 'generic', 
                headerBackTitle: 'Atrás'
            }}/>
        
        {/**Pantalla de login */}
        <Stack.Screen
            name='index'
            options={{headerShown: false}}/>

        {/**Pantalla de registro */}
        <Stack.Screen
            name='registro'
            options={{
                title: 'Formulario de registro',
                headerStyle:{
                    backgroundColor: '#414833'
                },
                headerTintColor: '#fff', //color del ícono regresar
                headerBackButtonDisplayMode: 'generic', 
                headerBackTitle: 'Atrás'
            }}/>
        
        {/**Pantalla de lista de los alimentos guardados/favoritos */}
        <Stack.Screen
            name='favoritos'
            options={{
                title: 'Lista de favoritos',
                headerStyle:{
                    backgroundColor: '#414833'
                },
                headerTintColor: '#fff', //color del ícono regresar
                headerBackButtonDisplayMode: 'minimal'                   
            }}/>

    </Stack>

    {/**Hacemos un menú modal */}
    <Modal
        transparent
        animationType='fade'
        visible={modalVisible}
        onRequestClose={()=>setModalVisible(false)}>
        <Pressable
            style={estilos.modalOverlay}
            onPress={()=>setModalVisible(false)}>
            <View style={estilos.menuContainer}>
                <TouchableOpacity
                    style={estilos.menuItem}
                    onPress={()=>{
                        setModalVisible(false)
                        logout()
                    }}>
                    <Ionicons name='log-out-outline' size={24} color={'#414833'}/>
                    <Text style={estilos.menuText}>Cerrar sesión</Text>
                </TouchableOpacity>
            </View>
        </Pressable>
    </Modal>
    </>
    
  )
}

const estilos = StyleSheet.create({
    separar: {
        marginRight: 15
    },
    modalOverlay:{
        flex: 1,
        justifyContent: 'flex-start',
        backgroundColor: 'rgba(0,0,0,0.1)',
        alignItems: 'flex-end',
        paddingTop: 60,
        paddingRight: 15
    },
    menuContainer:{
        backgroundColor: '#fff',
        borderRadius: 10,
        paddingVertical: 10,
        paddingHorizontal: 15,
        elevation: 5,
        shadowColor: '#000',
        shadowOpacity: 0.3,
        shadowOffset: { width: 0, height: 2 },
    },
    menuItem:{
        flexDirection: 'row',
        alignItems: 'center',
        paddingVertical: 8,
    },
    menuText:{
        marginLeft: 10,
        fontSize: 16,
        color: '#414833',
        fontWeight: 'bold'
    }

})