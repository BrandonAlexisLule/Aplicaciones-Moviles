import React from 'react'
import { Pressable, StyleSheet, Text, TextInput, View } from 'react-native'
import globalStyles from '../styles'

const NuevoPresupuesto = ({
    presupuesto,
    setPresupuesto,
    handleNuevoPresupuesto}) => {
  return (
    <View style={styles.container}>
        <Text style={styles.label}>Ingrese presupuesto: </Text>
        <TextInput
            keyboardType='numeric'
            placeholder='Agrega tu presupuesto'
            style={styles.input}
            onChangeText={setPresupuesto}
            value={presupuesto.toString()}/>
        <Pressable
            style={styles.boton} 
            onPress={() => handleNuevoPresupuesto(presupuesto)}>
            <Text style={styles.botonTexto}>Agregar presupuesto</Text>
        </Pressable>
    </View>
  )  
}

const styles = StyleSheet.create({
    label:{
        marginTop: 50,
        textAlign: 'center',
        fontSize: 24,
        fontWeight: 'bold',
        color: '#780000',
        marginBottom: 10,
    },
    input:{
        backgroundColor: '#ffc6c7',
        padding: 10,
        marginHorizontal: 20,
        marginBottom: 50,
        borderRadius: 10,
        textAlign:'center',
        marginTop: 10
    },
    boton:{
        backgroundColor: '#780000',
        marginHorizontal: 60, 
        borderRadius: 15,
        textAlign: 'center',
        padding: 10,
        marginTop: 10
    },
    botonTexto:{
        marginBottom: 10,
        marginTop: 10,
        color: '#fff',
        fontWeight: 'bold',
        textAlign:'center',
        fontSize: 20,
    }

})

export default NuevoPresupuesto