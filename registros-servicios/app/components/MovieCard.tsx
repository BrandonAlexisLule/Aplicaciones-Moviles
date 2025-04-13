import { View, Text, Image, TouchableOpacity } from 'react-native'
import React from 'react'
import { Movies } from '@/interfaces/interfaces'
import { Link } from 'expo-router'



//Detalles a necesitar
const MovieCard = ({
  id, 
  title,
  poster_path, 
  overview,
  vote_average, 
  release_date
} : Movies) => {

    const imageURL = `https://image.tmdb.org/t/p/w500${poster_path}`

    //fecha formateada
    const formattedDate = new Date(release_date).toLocaleDateString('es-ES', {
        year: 'numeric',
        month: 'long',
        day: 'numeric'
    })
    

    //Parámetros a pasar en @params
  return (
    <Link 
      href={{
        pathname: '/movies/[id]', 
        params: {
        id: id.toString(),
        title,
        poster_path,
        overview,
        vote_average,
        release_date
      }}} 
      asChild>
    <TouchableOpacity
         style={{ width: '30%' }} className="m-1"
      onPress={() => {
        console.log({title})

      }}

    >
      
    <View className='w-[100%] h-[300px] mt-16 rounded-lg'>
        <Image
            source={{uri : imageURL}}
            className='w-full h-[150px] rounded-md my-2'/>
        <Text className='text-white text-xl'>{title}</Text>
        <Text className='text-white text-xl'>⭐ {vote_average}</Text>
        <Text className='text-white text-xl'>{formattedDate}</Text>
    </View>

    </TouchableOpacity>
    </Link>

  )
}

export default MovieCard