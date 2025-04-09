import { StyleSheet, Text, TextInput, View } from 'react-native'
import React from 'react'
import Ionicons from '@expo/vector-icons/Ionicons'

interface Props {
    onPress: () => void;
    placeHolder: string;

}

const SearchBar = ({onPress, placeHolder} : Props) => {
  return (
    <View className='flex-row items-center bg-dark-100 rounded-full px-5 py-5'>
      <Ionicons name='search-outline' size={30} color={'white'}/>
      <TextInput 
        onPress={onPress}
        placeholder={placeHolder}
        placeholderTextColor='#A8B5DB'
        value=''
        onChangeText={()=>{

        }}
        className='flex-1 text-white ml-2'
      />
    </View>
  )
}

export default SearchBar

const styles = StyleSheet.create({})