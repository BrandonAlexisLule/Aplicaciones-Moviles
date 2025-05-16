import { StyleSheet, Text, View, Image, FlatList, ActivityIndicator } from 'react-native'
import React, { useEffect, useState } from 'react'
import MovieCard from '../components/MovieCard'
import useFetch from '@/services/useFetch'
import { fetchPopularMovies } from '@/services/api'
import SearchBar from '../components/SearchBar'
const headerImage = require('@/assets/images/encabezado.jpg')
const Logo = require('@/assets/images/logo.png')

export default function Search() {

    const [searchQuery, setsearchQuery] = useState('')

    const {
        data: movies, 
        loading, 
        error,
        refetch: loadMovies,
        reset
    } = useFetch(() => fetchPopularMovies(
        {query: searchQuery} 
    ), false) //no quiero que haga la búsqueda automáticamente, por eso le indicamos que sea false

    useEffect(()=> {

        const timeoutID = setTimeout(  async () => {
            if(searchQuery.trim()){
                await loadMovies()
            } else {
                reset()
            }
        },1500)
        
        return () => clearTimeout(timeoutID) //Lo reinica a cero segundos
        

    }, [searchQuery])


    return (
        <View className='bg-primary flex-1'>
            <Image source={headerImage} className='absolute w-full z-0 ' resizeMode='cover'/>
            <FlatList 
                data={movies}
                renderItem={({item})=>(<MovieCard {...item}/>)}
                keyExtractor={(item) => item.id.toString()}
                numColumns={3}
                columnWrapperStyle={{
                    justifyContent: 'flex-start',
                    gap: 10,
                    marginVertical: 15
                }}
                contentContainerStyle={{
                    paddingBottom: 120,
                    
                }}
                ListHeaderComponent={
                    <>
                        <View className='w-full flex-row justify-center mt-20 items-center'>
                            <Image source={Logo} className='w-24 h-28 mx-auto'/>
                        </View>
                        <View className='my-5 mx-5'>
                            <SearchBar
                                placeHolder='Search for a movie' 
                                value = {searchQuery}
                                onChangeText = {(text) => setsearchQuery(text)}
                            />
                        </View>

                        //si carga, se muestra
                        {loading &&(
                            <ActivityIndicator 
                            size='large' color='#0000ff'
                            className='my-3'
                            />
                        )}

                        //si hay errores después de cargar
                        {error &&(
                            <Text className='text-red-500 px-5 my-3'>Error {error.message}</Text>
                        )}

                        {!loading && !error && searchQuery.trim() && movies?.length > 0 &&(
                            <Text className='text-white text-2xl text-center'>Search Result For {''}
                                <Text className='text-accent'>{searchQuery}</Text>
                            </Text>
                        )}
                    </>
                }
                ListEmptyComponent={
                    !loading && !error ? (
                        <View className='mt-10 px-5'>
                            <Text className=' p-5 text-gray-600 text-2xl rounded-2xl' >{searchQuery.trim() ? 'No movies found' : 'Search for a movie'}</Text>
                        </View>
                    ) : null
                }
            /> 
        </View>
    )
}

const styles = StyleSheet.create({})