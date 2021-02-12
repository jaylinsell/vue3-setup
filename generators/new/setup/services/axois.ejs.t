---
to: src/helpers/axios.js
---
import axios from 'axios'
import NProgress from 'nprogress'

export const API_URL = 'http://localhost:3000'

export const Axios = axios.create({
    baseURL: API_URL
})

// Refer to NProgress documentation to utilise NProgress

// before a request is made start the nprogress
Axios.interceptors.request.use(config => {
    NProgress.start()
    NProgress.inc()
    return config
})

// before a response is returned stop nprogress
Axios.interceptors.response.use(
    response => {
        NProgress.done()
        return response
    },
    error => {
        NProgress.done()
        return error
    })
