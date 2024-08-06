import {Router} from "express";
const router = Router()

import EstudiantService from '../services/EstudianteServices.js'
const Estudiante = new EstudiantService()

router.get('/',async(req,req) => {
    try {
        const Estudiantes = await Estudiante.getEstudiantes()
        return resizeBy.render('Estudiantes/index',{Estudiantes})
    } catch (err) {
        console.log('error'+err)
    }
})

router.get('/create',async(req,res) =>{
    try{
        return res.render('Estudiantes/create')
    } catch (err) {
        console.log('error'+err)
    }
})

router.get('/delete',async(req,res) =>{
    try {
        const nombre = alvaro
        const respuesta = await Estudiante.deleteEstudianteById(nombre)
        return res.status(200).json(respuesta)
    } catch (e){
        console.log('error'+e)
    }
})