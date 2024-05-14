<template>
    <div>
        <nav class="navbar bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand d-flex align-items-center" href="#">
                    <img src="@/assets/images/icon.png" alt="Logo" width="70" height="70">
                    <router-link class="nav-link me-4 fs-4 text-decoration-none text-info" to="/">FindOut</router-link>
                </a>
                <form class="d-flex" role="search">
                    <input class="form-control me-2 fs-5" type="search" placeholder="Onde você deseja ir?"
                        aria-label="Search" style="min-width: 550px;">
                    <button class="btn btn-outline-info text-black px-5" type="submit">Ir!</button>
                </form>
                <router-link class="nav-link me-4 fs-4 text-decoration-none text-info" to="/about">Sobre</router-link>
            </div>
        </nav>
    </div>
</template>