import AsyncStorage from '@react-native-async-storage/async-storage'
import React, { useEffect, useState } from 'react'
import { FlatList, StyleSheet, Text, TouchableOpacity, View } from 'react-native'

const FAVORITOS_KEY = 'favoritos_alimentos'

export default function Favoritos() {
  const [favoritos, setFavoritos] = useState<string[]>([])

  useEffect(() => {
    const obtenerFavoritos = async () => {
      try {
        const favoritosGuardados = await AsyncStorage.getItem(FAVORITOS_KEY)
        const parseados = favoritosGuardados ? JSON.parse(favoritosGuardados) : []
        setFavoritos(Array.isArray(parseados) ? parseados : [])
      } catch (e) {
        console.error('Error al obtener favoritos', e)
      }
    }

    obtenerFavoritos()
  }, [])

  const eliminarFavorito = async (nombre: string) => {
    const nuevos = favoritos.filter(item => item !== nombre)
    try {
      await AsyncStorage.setItem(FAVORITOS_KEY, JSON.stringify(nuevos))
      setFavoritos(nuevos)
    } catch (e) {
      console.error('Error al eliminar favorito', e)
    }
  }

  return (
    <View style={estilos.contenedor}>
      <Text style={estilos.instruccion}>¡Puedes eliminar el alimento presionándolo!</Text>
      <View style={estilos.tarjeta}>
        <FlatList
          data={favoritos}
          keyExtractor={(item, index) => `${item}-${index}`}
          renderItem={({ item, index }) => (
            <View style={estilos.filaAlimBoton}>
              <TouchableOpacity onPress={() => eliminarFavorito(item)} style={{}}>
                <Text style={estilos.informacion}>{index + 1}. {item}</Text>
              
              </TouchableOpacity>
            </View>
          )}
        />
      </View>
    </View>
  )
}

const estilos = StyleSheet.create({
  filaAlimBoton:{
    flexDirection: 'row',
    alignItems: 'center'
  },
  instruccion:{
    color: '#414833',
    borderRadius: 5,
    backgroundColor: '#fff',
    fontSize: 20,
    fontWeight: 'bold',
    margin: 10,
    padding: 10
  },
  contenedor:{
    flex: 1,
    backgroundColor: '#ccd5ae'
  },
  tarjeta:{
    flex: 1,
    margin: 4,
    padding: 10,
  },
  informacion:{
    color: '#414833',
    fontWeight: 'bold',
    fontSize: 20,
    marginVertical: 2
  },
  iconoDetalles:{
    alignItems: 'center',
    color: '#414833',
  }
})
