<template>
  <div id="app">
    <img src="./assets/logo.png">
    <VideoPlayer/>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld'
import VideoPlayer from './components/VideoPlayer'

export default {
  name: 'App',
  components: {
    HelloWorld,
    VideoPlayer
  }
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
