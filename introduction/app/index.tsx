
import { Platform, ScrollView, StyleSheet, Text, View } from "react-native";
import GradientItem from "@/components/GradientItem";

//
import {gradients} from '@/gradients'

export default function Index() {


  return (
    <ScrollView contentContainerStyle={estilos.container}>
      {gradients.map((row, rowIndex) => ( 
        <View key={rowIndex} style={{flexDirection: 'row'}}>
          {row.map((gradient, index) => (
            <GradientItem
              key={index} 
              colors={gradient.colors} 
              gradientName={gradient.name}/>
          ))}
        </View>
      ))}

    </ScrollView>
  );
}

const estilos = StyleSheet.create({
  container: {
    paddingTop: Platform.OS === "ios" ? 100 : 0
  }, 
  texto: {
    fontSize: 30,
    fontWeight: 'bold',
    color: 'black'
  },

})
