import AsyncStorage from '@react-native-async-storage/async-storage'
import { useLocalSearchParams, useRouter } from 'expo-router'
import React, { useEffect, useRef, useState } from 'react'
import { Animated, ScrollView, StyleSheet, Text, TouchableOpacity, View } from 'react-native'

const FAVORITOS_KEY = 'favoritos_alimentos'

export default function DetallesAlimentos() {

    const {id, alimento, categoria, cantidad, unidad, peso_bruto, peso_neto, kcal,colesterol, proteina, lipidos, carbohidratos, grasa_saturada, grasa_monoinsaturada} = useLocalSearchParams()
    const router = useRouter()
    const [favoritos, setFavoritos] = useState<string[]>([])
    const [mensaje, setMensaje] = useState('')
    const animacion = useRef(new Animated.Value(0)).current

    useEffect(() => {
        const cargarFavoritos = async () => {
          try {
            const guardados = await AsyncStorage.getItem(FAVORITOS_KEY)
            const parseados = guardados ? JSON.parse(guardados) : []
            setFavoritos(Array.isArray(parseados) ? parseados : [])
          } catch (e) {
            console.error('Error al cargar favoritos', e)
          }
        }
        cargarFavoritos()
    }, [])

    const guardarFavoritos = async (nuevos: string[]) => {
        try {
          await AsyncStorage.setItem(FAVORITOS_KEY, JSON.stringify(nuevos))
          setFavoritos(nuevos)
        } catch (e) {
          console.error('Error al guardar favoritos', e)
        }
      }
    
      const mostrarMensaje = (texto: string) => {
        setMensaje(texto)
        Animated.sequence([
          Animated.timing(animacion, {
            toValue: 1,
            duration: 300,
            useNativeDriver: true,
          }),
          Animated.delay(2000),
          Animated.timing(animacion, {
            toValue: 0,
            duration: 300,
            useNativeDriver: true,
          })
        ]).start()
      }
    
    const agregarAFavoritos = () => {
        if (!alimento) return
        const nombre = alimento as string
    
        if (favoritos.includes(nombre)) {
          mostrarMensaje(`${nombre} ya está en favoritos`)
          return
        }
    
        const nuevos = [...favoritos, nombre]
        guardarFavoritos(nuevos)
        mostrarMensaje(`${nombre} agregado a favoritos`)
      }
    
    const eliminarDeFavoritos = () => {
        if (!alimento) return
        const nombre = alimento as string
    
        if (!favoritos.includes(nombre)) {
          mostrarMensaje(`${nombre} no está en la lista`)
          return
        }
    
        const nuevos = favoritos.filter(item => item !== nombre)
        guardarFavoritos(nuevos)
        mostrarMensaje(`${nombre} eliminado de favoritos`)
    }
    



  return (
    <ScrollView style={styles.contenedor}>
        <View style={styles.tarjeta}>
            <Text style={styles.informacion}>Id del alimento: <Text style={styles.dato}>{id}</Text></Text>
            <Text style={styles.informacion}>Nombre: <Text style={styles.dato}>{alimento}</Text></Text>
            <Text style={styles.informacion}>Categoría: <Text style={styles.dato}>{categoria}</Text></Text>
            <Text style={styles.informacion}>Cantidad: <Text style={styles.dato}>{cantidad} g</Text></Text>
            <Text style={styles.informacion}>Unidad: <Text style={styles.dato}>{unidad}</Text></Text>
            <Text style={styles.informacion}>Preso bruto <Text style={styles.dato}>{peso_bruto} g</Text></Text>
            <Text style={styles.informacion}>Peso neto: <Text style={styles.dato}>{peso_neto} g</Text></Text>
            <Text style={styles.informacion}>Calorías: <Text style={styles.dato}>{kcal} g</Text></Text>
            <Text style={styles.informacion}>Colesterol: <Text style={styles.dato}>{colesterol} g</Text></Text>
            <Text style={styles.informacion}>Proteína: <Text style={styles.dato}>{proteina} g</Text> </Text>
            <Text style={styles.informacion}>Lípidos: <Text style={styles.dato}>{lipidos} g</Text></Text>
            <Text style={styles.informacion}>Carbohidratos: <Text style={styles.dato}>{carbohidratos} g</Text></Text>
            <Text style={styles.informacion}>Grasa Saturada: <Text style={styles.dato}>{grasa_saturada} g</Text></Text>
            <Text style={styles.informacion}>Grasa Monoinsaturada: <Text style={styles.dato}>{grasa_monoinsaturada} g</Text></Text>
        </View>


        <View style={styles.fondoBotones}>
            <Text style={styles.textoInfoBotones}>Agregar o eliminar alimentos favoritos</Text>
            <View style={styles.contenedorBotones}>
                <TouchableOpacity style={styles.cajaBoton} onPress={agregarAFavoritos}>
                    <Text style={styles.textoBoton}>Agregar a favoritos</Text>
                </TouchableOpacity>
                <TouchableOpacity style={styles.cajaBoton} onPress={eliminarDeFavoritos}>
                    <Text style={styles.textoBoton}>Eliminar de favoritos</Text>
                </TouchableOpacity>
            </View>
        </View>

        <Animated.View
          style={{
            opacity: animacion,
            transform: [{ 
              translateY: animacion.interpolate({ 
                inputRange: [0, 1], 
                outputRange: [20, 0] }) }],
            padding: 10,
            backgroundColor: '#fff',
            position: 'absolute',
            bottom: 20,
            left: 0,
            right: 0,
            alignItems: 'center'
          }}>
        <Text style={{ color: '#414833', fontWeight: 'bold' }}>{mensaje}</Text>
      </Animated.View>
    </ScrollView>
  )
}

const styles = StyleSheet.create({
    contenedor:{
        flex: 1,
        backgroundColor: '#ccd5ae'
    },

    //recuadro para los botones
    fondoBotones: {
        borderColor: '#414833',
        borderRadius: 10,
        borderWidth: 2,
        margin: 15,
        padding: 10,
    },
    
    //Texto de agregar o eliminar alimentos
    textoInfoBotones: {
        fontSize: 16,
        marginBottom: 10,
        textAlign: 'left',
        color: '#414833',
    },

    //acomodo de los contenedores
    contenedorBotones: {
        flexDirection: 'row',
        justifyContent: 'space-between',
        gap: 10, 
    },

    cajaBoton: {
        backgroundColor: '#414833',
        borderRadius: 10,
        paddingVertical: 10,
        paddingHorizontal: 10,
        flex: 1,
        marginHorizontal: 5,
    },

    textoBoton: {
        textAlign: 'center',
        color: 'white',
        fontWeight: 'bold',
        fontSize: 16
    },

    tarjeta:{
        margin: 4,
        padding: 10,
    },
    
    informacion:{
        color: '#414833',
        fontWeight: 'bold',
        fontSize: 20,
        marginVertical: 2
    },
    dato: {
        fontWeight: 'normal'
    },
    flecha:{
        marginTop: 2
    },
    botonAtras: {
        margin: 10,
        flexDirection: 'row'
    },
    titulo: {
        fontSize: 20,
        fontWeight: 'bold',
        marginLeft: 5,
        marginBottom: 2
    }
})