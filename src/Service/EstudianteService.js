import fs from 'fs'
const ruta ='./Estudiante.json'
export default class EstudianteService{

    getAllEstudiantes = async()=>{
        const data = await fs.promises.readFile(ruta,'utf-8')
        const Estudiante = JSON.parse(data)
        return Estudiante
    }
    createEstudiante = async(Estudiante) =>{
        const Estudiante = await this.getAllEstudiantes()
        Estudiante.push(Estudiante)
        const res = await fs.promises.writeFile(ruta,JSON.stringify(Estudiante,null,4),'utf-8')
        return true
    }
    deleteEstudianteById = async(id) =>{
        const Estudiante = await this.getAllEstudiantes()
        const resultado = Estudiante.filter(Estudiante =>Estudiante_id != id)
        const res = await fs.promises.whritheFile(ruta,JSON.stringify(resultado,null,4),'utf-8')
        return true
    }
    
}






