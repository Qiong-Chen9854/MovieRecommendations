<template>
   <div class="sigleMovie">
    <img src="../../movieDemoPicture.jpg" alt="movieDemoPicture">
    <h3>{{ movie.movieName }}</h3>
    <h4>{{ movie.category }}</h4>
  </div>
  
</template>
<script>
export default{
  props:['movie'],
}

</script>

<style>
img{
  width: 250px;
  border-radius: 3px;
}
h3{
  width: 250px;
  height: 30px;
  text-align: left;

}
h4{
  font-weight:lighter;
  text-align: left;
  

}

.sigleMovie{
  /* flex: 1 1 18%; */
  justify-content: center;
  align-items: center;
  text-align: center;
}
</style>