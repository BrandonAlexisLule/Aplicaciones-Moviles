import React from 'react'
import { SafeAreaView, StyleSheet, Text } from 'react-native'

const Header = () => {
  return (
    <SafeAreaView style={styles.container}>
        <Text style={styles.texto}>Planificador de Gastos</Text>
    </SafeAreaView>
  )
}

const styles = StyleSheet.create({
  container:{
    backgroundColor: '#780000'

  },
  texto:{
    color: 'white',
    fontWeight: 'bold',
    marginBottom: 50,
    marginTop: 50,
    textAlign: 'center',
    fontSize: 29
  }
})

export default Header