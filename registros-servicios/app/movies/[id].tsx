import { StyleSheet, Text, View, Image, ScrollView } from 'react-native'
import React from 'react'
import { Movies } from '@/interfaces/interfaces'
import { useLocalSearchParams } from 'expo-router'

export default function Details() {

const {id, title, overview, vote_average, poster_path, release_date} = useLocalSearchParams()

const imageURL = `https://image.tmdb.org/t/p/w500${poster_path}`

  return (
    <ScrollView className='bg-primary h-full'>
      <View>
        <Image source={{ uri: imageURL }} style={{ width: '100%', height: 400 }} resizeMode='stretch' />
        <Text className='text-white text-[30px] pl-10 my-5'>{title}</Text>
        <Text className=' text-white pl-2 py-3 text-2xl'>{overview}</Text>
        <Text className='text-white pl-10 py-3 text-3xl'>ID: {id}</Text>
        <Text className='text-white pl-10 text-2xl'>⭐ {vote_average}</Text>
        <Text className='text-white pl-10 text-2xl'>{release_date}</Text>
      </View>
    </ScrollView>
  )
}

const styles = StyleSheet.create({})