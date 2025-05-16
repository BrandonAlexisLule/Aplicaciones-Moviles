import { View, Text, FlatList, TouchableOpacity, ScrollView } from 'react-native'
import React, { useEffect, useState } from 'react'
import { Alimentos } from '@/interfaces/alimentos'
import { supabase } from '@/lib/supabase'
import { StyleSheet } from 'react-native'
import Ionicons from '@expo/vector-icons/Ionicons'
import { Link } from 'expo-router'
import SearchBar from './components/SearchBar'

const BusquedaAlimentos =({} : Alimentos) => {

  const [alimentos, setAlimentos] = useState<Alimentos[]>([])
  const [dataError, setDataError] = useState('')
  
  useEffect(() => {
    loadAlimentos()
  }, [])

  const loadAlimentos = async (query: string = '') => {
    try {
      const { data, error } = await supabase.from('alimentos').select('*').ilike('alimento', `%${query}%`)//Búsqueda insensible a mayúsculas
      if(error) {
        setDataError(error.message)
        setAlimentos([])
        console.log('Supabase error')
      } else {
        setDataError('')
        setAlimentos(data ?? [])
      }
    } catch (error) {
      setDataError('Error de red inesperado')
      console.log('Network or unexpected error: ', error)
    }

  }

  return (
    <View
      style={{
        backgroundColor: '#d8e2dc', //fondo de la sección alimentos
        flex: 1,
      }}>

    {dataError !== '' ? (
      <>
        <Text>Error: {dataError}</Text>
      </>
    ) : (
      <>
      <View style={{alignItems: 'center', width: '100%'}}>
        <SearchBar placeHolder='Buscar alimentos' onChangeText={(text) => loadAlimentos(text)} />
      </View>

      {alimentos.length === 0 ? (
        <Text>No se encontraron alimentos</Text>
      ) : (
          <FlatList
            keyExtractor={(item) => item.id.toString()}
            data={alimentos}
            renderItem={({ item }) => (
              <Link
                href={{
                  pathname:'/alimentos/[id]',
                  params:{...item}}}
                  asChild>
                <TouchableOpacity style={estilos.data}>
                  <View style={{width: '95%'}}>
                    <Text style={estilos.itemText}>
                      {item.alimento}                  
                    <Ionicons name='chevron-forward-outline' size={20} style={estilos.iconoDetalles} /></Text>
                  </View>
                </TouchableOpacity>
              </Link>
            )}
          />
        )}
      </>
    )}
  </View>
)}

export default BusquedaAlimentos

const estilos = StyleSheet.create({
  data:{
    fontSize: 20,
    fontWeight: 'thin',
    marginHorizontal: 10,
    marginVertical: 10,
    backgroundColor: 'white',
    borderRadius: 5,
    padding: 5,
    
    width: '95%',
    shadowColor: '#000',
    shadowOffset:{
      width: 0,
      height: 2
    },
    
    shadowOpacity: 0.25,
    shadowRadius: 4,
    elevation: 5
  },
  itemText: {
    fontSize: 20,
    fontWeight: '400',
    flexShrink: 1,
     // para que no desborde si el texto es largo
  },
  bienvenida:{
    margin: 10,
    fontSize: 25,
    color: '#ccd5ae',
    fontWeight: 'bold'
  },
  titleScreen:{
    margin: 10,
    fontSize: 20
  },
  iconoDetalles:{
    alignItems: 'center',
    color: '#414833',
  }

})

