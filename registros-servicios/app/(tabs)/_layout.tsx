import { Tabs } from "expo-router";
import Ionicons from "@expo/vector-icons/Ionicons";
import { View, Text } from "react-native";

export default function RootLayout() {

  interface TabBarIconInterface {
    title : string,
    iconName : any,
    focused : boolean
  }

  const TabBarIcon = ({ title, iconName, focused}:TabBarIconInterface) => {

    if(!focused){
      return (
        <View className="flex flex-row flex-1 min-w-[112px] min-h-16 justify-center items-center bg-[#0f0d23] mt-4 rounded-ms overflow-hidden">
          <Ionicons name={iconName} size={30} color='#a8b5bd' />
          <Text className="text-white">{title}</Text>
        </View>
      )
    }

    return (
      <View className='flex flex-row flex-1 min-w-[112px] min-h-16 justify-center items-center bg-secondary mt-4 rounded-ms overflow-hidden'>
        <Ionicons  name={iconName} size={30} color={'white'} />
        <Text className="text-white">{title}</Text>
      </View>
    )
  }

  

  return <Tabs screenOptions={{

      tabBarShowLabel: false,
      tabBarItemStyle: {
        width: '100%',
        height: '100%',
        justifyContent: 'center',
        alignItems: 'center'
      },
      tabBarStyle: {
        backgroundColor: '#0f0d23',
        borderRadius: 50,
        marginHorizontal: 20,
        marginBottom: 36,
        height: 52,
        position: 'absolute',
        overflow: 'hidden',
        borderWidth: 1,
        borderColor: '#0f0d23'
      }

    }}>
    <Tabs.Screen 
      name="index"
      options={{
        headerShown: false,
        title: 'Home',
        tabBarIcon: ({ focused } : TabBarIconInterface ) => (
          <TabBarIcon
           title='Home' 
           iconName='home-outline'
           focused={focused}/>
        ),
      }}/>

    <Tabs.Screen
      name="search"
      options={{
        headerShown: false,
        title: 'Search',
        tabBarIcon: ({ focused } : TabBarIconInterface) => (
          <TabBarIcon
          title='Search' 
          iconName='search'
          focused={focused}/>
        ),
      }}/>

    <Tabs.Screen
      name="saved"
      options={{
        headerShown: false,
        title: 'Saved',
        tabBarIcon: ({ focused } : TabBarIconInterface) => (
          <TabBarIcon
          title='Saved' 
          iconName='bookmark-outline'
          focused={focused}/>
        ),
      }}/>

    <Tabs.Screen
      name="profile"
      options={{
        headerShown: false,
        title: 'Profile',
        tabBarIcon: ({ focused } : TabBarIconInterface) => (
          <TabBarIcon
          title='Profile' 
          iconName='person-outline'
          focused={focused}/>
        ),
      }}/>



  </Tabs>

}
