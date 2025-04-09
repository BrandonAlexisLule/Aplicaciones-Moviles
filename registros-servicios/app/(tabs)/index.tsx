import { Image, ScrollView, StyleSheet, Text, View } from 'react-native'
import React from 'react'
import './global.css'
import SearchBar from '../components/SearchBar'
import { useRouter } from 'expo-router'

const headerImage = require('@/assets/images/encabezado.jpg')
const Logo = require('@/assets/images/logo.png')


export default function Onboarding() {

  const router = useRouter()
  
  return (
    <View className='flex-1 bg-primary'>
      <Image source={headerImage} className='absolute w-full z-0 '/>
      <ScrollView className='flex-1 px-5'
        showsVerticalScrollIndicator={false} 
        contentContainerStyle={{
          minHeight: "100%",
          paddingBottom: 10,
        }}>
        <Image source={Logo} className='w-24 h-28 mt-20 mx-auto'/>
        
        
        <View className='flex flex-1 mt-5'>
          <SearchBar
            onPress = {() => router.push('/search')}
            placeHolder = 'Search for a movie'
          
          />

        </View>



      </ScrollView>
    </View>
  )
}

const styles = StyleSheet.create({

})
