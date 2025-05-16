import { StyleSheet, Text, TextInput, View } from 'react-native'
import React from 'react'
import Ionicons from '@expo/vector-icons/Ionicons'

interface Props {
    onPress?: () => void;
    placeHolder: string;
    value?: string,
    onChangeText?: (text:string) => void
}

const SearchBar = ({onPress, placeHolder, value, onChangeText} : Props) => {
  return (    
    <View style={styles.buscador}>
      <Ionicons name='search-outline' size={30} color={'#414833'}/>
      <TextInput 
        onPress={onPress}
        placeholder={placeHolder}
        placeholderTextColor='#414833'
        value={value}
        onChangeText={onChangeText}
        style={styles.colorInput}
      />
    </View>
  )
}

export default SearchBar

const styles = StyleSheet.create({
    buscador:{
      width: '95%',
      flexDirection: 'row',
      alignItems: 'center',
      backgroundColor: '#ccd5ae', //fondo del buscador
      borderRadius: 5,
      marginHorizontal: 20,
      marginVertical: 40,
      paddingVertical: 10,
      paddingHorizontal: 10,
      shadowColor: '#000',
      shadowOffset:{
        width: 0,
        height: 2
      },
      shadowOpacity: 1,
      shadowRadius: 4,
      elevation: 5
    },
    colorInput:{
      flex: 1,
      color: '#414833',
      marginLeft: 8,
      fontWeight: 'bold',
      fontSize: 25
    }


})