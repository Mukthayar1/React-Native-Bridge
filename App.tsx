import { StyleSheet, Text, View, NativeModules, NativeEventEmitter } from 'react-native'
import React, { useEffect } from 'react'

const { HelloWorld, IosEvents } = NativeModules;

const MyEventListeners = new NativeEventEmitter(IosEvents)

const App = () => {

  IosEvents.sumNumbersEvents(5, 6);


  useEffect(() => {

    // HelloWorld.helloworld()
    // HelloWorld.sumNumbers(5, 6).then((res) => {
    //   console.log('res', res)
    // }).catch((e) => {
    //   console.log('reee', e)
    // });

    MyEventListeners.addListener('OnSuccess', (data) => {
      console.log('OnSuccess===>', data)
    });

    MyEventListeners.addListener('OnFailuer', (data) => {
      console.log('OnFailuer===>', data)
    })


    return ()=>{
      MyEventListeners.removeAllListeners('OnSuccess');
      MyEventListeners.removeAllListeners('OnFailuer')

    }

  }, [])

  return (
    <View style={{ justifyContent: "center", alignItems: "center", backgroundColor: "rgba(255,255,255,0.2)", flex: 1 }}>
      <Text>App</Text>
    </View>
  )
}

export default App

const styles = StyleSheet.create({})