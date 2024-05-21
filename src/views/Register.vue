<template>
    <div class="container d-flex justify-content-center align-items-center my-3">
      <div class="row w-100">
        <div class="p-5 col-md-5 bg-info rounded-start">
          <div class="fw-bold lh-1 text-white text-start mb-3" style="font-size: 4.5em;">
            Registre-se
            <hr class="border border-white border-3 bg-white">
          </div>
          <h2 class="mb-2 text-white">Usuário</h2>
          <div class="input-group input-group-sm mb-3">
            <input 
              type="text" 
              class="form-control p-2" 
              arial-label=""
              aria-describedby="inputGroup-sizing-sm"
              placeholder="Crie um usuário"
            >
          </div>
          <h2 class="mb-2 text-white">Senha</h2>
          <div class="input-group input-group-sm mb-3">
            <input 
              :type="visibility ? 'text' : 'password'" 
              class="form-control p-2" 
              arial-label=""
              aria-describedby="inputGroup-sizing-sm"
              placeholder="Crie uma senha"
            >
          </div>
          <h2 class="mb-2 text-white">Senha</h2>
          <div class="input-group input-group-sm mb-3">
            <input 
              :type="visibility ? 'text' : 'password'" 
              class="form-control p-2" 
              arial-label=""
              aria-describedby="inputGroup-sizing-sm"
              placeholder="Digite sua senha novamente"
            >
          </div>
          <div class="d-flex justify-content-between align-items-center mb-3">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">
                <label class="form-check-label text-black" @click="changeVisibility">
                  Exibir senha
                </label>
              </div>
            <button type="button" class="btn btn-light text-dark" style="font-size: 1.5em;">
              Entrar
            </button>
           
          </div>
        </div>
        <div class="col-md-7 bg-white rounded-end d-flex align-items-center justify-content-center">
          <img src="../assets/images/loginAndRegister/register.webp" alt="" class="img-fluid" style="max-width: 80%;">
        </div>
      </div>
    </div>
  </template>
  
  <script>
  export default {
    data: () => ({
        visibility: false 
    }),
    methods: {
        changeVisibility() {
            this.visibility = !this.visibility
        }
    },

  };
  </script>
  
  <style>
  
  </style>
  