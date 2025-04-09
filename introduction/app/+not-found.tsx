import { StyleSheet, Text, View } from 'react-native'
import React from 'react'
import { Link } from 'expo-router'

export default function NotFoundScreen() {
  return (
    <View>
      <Text>NotFoundScreen</Text>
      <Link href={'/'}>Go to home</Link>
    </View>
  )
}

const styles = StyleSheet.create({})