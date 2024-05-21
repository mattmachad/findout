
<template>
<div>


  <div class="container">
    <div class="row">
      <div class="p-5 col-5 mt-3 bg-info rounded-start">
        <div class="fw-bold lh-1 text-white text-start mb-3" style="font-size: 4.5em;">
          Descubra lugares sem sair de casa...
        </div>
        <h2 class="mb-2 text-white">De onde?</h2>
        <div class="input-group input-group-sm mb-3">
            <input 
              type="text" 
              class="form-control p-2" 
              arial-label=""
              aria-describedby="inputGroup-sizing-sm"
            >
            <button class="input-group-text" id="basic-addon2"><i class="bi bi-pin"></i></button>
        </div>
        <h2 class="mb-2 text-white">Para onde?</h2>
        <div class="input-group input-group-sm mb-3">
          <input 
            type="text" 
            class="form-control p-2" 
            arial-label=""
            aria-describedby="inputGroup-sizing-sm"
            >
            <button class="input-group-text" id="basic-addon2"><i class="bi bi-pin"></i></button>
          </div>
        <button type="button" class="btn btn-light mb-3 text-dark" style="font-size: 1.5em;">
          Buscar <i class="bi bi-search ms-1"></i>
        </button>
      </div>
      <div class="col-7 mt-3 bg-white rounded-end">
        <iframe 
          class="mt-3 rounded" 
          width="100%" 
          height="94%" 
          style="border: 15px;" 
          loading="lazy"
          allowfullscreen referrerpolicy="no-referrer-when-downgrade" 
          :src="unimarLink">
        </iframe>
      </div>
    </div>
  </div>
  </div>
</template>

<script>

export default {
  data: () => ({
    unimarLink: "https://www.google.com/maps/embed/v1/place?key=AIzaSyDGgUsC1HWikfjFda0Bz70GPo25YZ_9MuE&q=Unimar,Marilia",
  })

}
</script>

<style scoped>

</style>