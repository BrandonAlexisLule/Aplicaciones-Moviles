import { ActivityIndicator, FlatList, Image, ScrollView, StyleSheet, Text, View } from 'react-native'
import React from 'react'
import './global.css'
import SearchBar from '../components/SearchBar'
import { useRouter } from 'expo-router'
import useFetch from '@/services/useFetch'
import { fetchPopularMovies } from '@/services/api'
import MovieCard from '../components/MovieCard'

const headerImage = require('@/assets/images/encabezado.jpg')
const Logo = require('@/assets/images/logo.png')


export default function Onboarding() {

  const router = useRouter()

  const {
    data: movies, 
    loading: moviesLoading, 
    error: movieError
  } = useFetch(() => fetchPopularMovies(
    {query: ''}
  ))



  
  return (
    <View className='flex-1 bg-primary'>
      <View>
        <Image source={headerImage} className='absolute w-full z-0 '/>
      </View>
      
      <ScrollView className='flex-1 px-5'
        showsVerticalScrollIndicator={false} 
        contentContainerStyle={{
          minHeight: "100%",
          paddingBottom: 10,
        }}>
        <Image source={Logo} className='w-24 h-28 mt-20 mx-auto'/>
    
        {/**renderizar las películas */}

        {moviesLoading ? (
          <ActivityIndicator 
            size='large'
            color='#0000ff'
            className='mt-10 self-center'
          
          />
        ) : movieError ? (
          <Text className='text-white'>Error : {movieError?.message}</Text>
        ) : (
          <View className='flex flex-1 mt-5'>
            <SearchBar
              onPress = {() => router.push('/search')}
              placeHolder = 'Search for a movie'
            
            />

{/**kurzor */}
            <>
              <Text className='text-4xl text-white my-5'>Latest Movies</Text>
              <FlatList 
                data={movies}
                renderItem={({item})=>(
                  <MovieCard 
                    {...item}
                  />

                )}
                keyExtractor={(item) => item.id.toString()}
                numColumns={3}
                columnWrapperStyle={{
                  justifyContent: 'flex-start',
                  gap: 10,
                  paddingRight: 5,
                  marginBottom: 2

                }}
                className='mt-2 pb-32'
                scrollEnabled={false}
              />    
            </>
          </View>
        )}
      </ScrollView>
    </View>
  )
}

const styles = StyleSheet.create({

})
