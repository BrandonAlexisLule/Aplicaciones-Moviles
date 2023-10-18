import React from 'react'
import { Modal, Pressable, SafeAreaView, Text, View } from 'react-native'

const FormularioGasto = (modal, setModal) => {
  return (
    <SafeAreaView>
        <View>
            <Pressable
            onPress={()=>{
                setModal(!modal)
            }}>
                
                <Text>Cancelaar</Text>
            </Pressable>

            <View>

                <Text>Nuevo Gasto</Text>
                <View>
                    <Text>Nombre del gasto: </Text>
                    <TextInput placeholder=''/>
                </View>

                <View>
                    <Text>Nombre del gasto: </Text>
                    <TextInput placeholder=''/>
                </View>
            </View>
        </View>
    </SafeAreaView>
  )
}

export default FormularioGasto