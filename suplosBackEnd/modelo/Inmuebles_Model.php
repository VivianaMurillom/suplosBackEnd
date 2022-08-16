<?php

// Documento con las ordenes a la base de datos

include_once "../Database/conexion.php";

class Inmuebles_Model
{
    function __construct()
    {
    }

    public static function GetCity()
    {
        $database = new conexion();
        $prepare = "SELECT DISTINCT Ciudad FROM inmuebles ORDER BY Ciudad ASC;";
        $data = $database->query($prepare)->resultset();
        return $response['data']= $data;
    }

    public static function GetTYpe()
    {
        $database = new conexion();
        $prepare = "SELECT DISTINCT Tipo FROM inmuebles WHERE Ip_asignada != '".($_SERVER['REMOTE_ADDR'])."' ORDER BY Tipo ASC;";
        $data = $database->query($prepare)->resultset();
        return $response['data']= $data;
    }

    public static function GetAvailableProperties($data)
    {
        $database = new conexion();
        $where = '';
        if(!empty($data['city'])){
            $where .= ' AND Ciudad = "'.$data['city'].'"';
        }
        if(!empty($data['type'])){
            $where .= ' AND Tipo = "'.$data['type'].'"';
        }
        if(!empty($data['rangoPrecio'])){
            $rango = explode(';',$data['rangoPrecio']);
            $where .= ' AND Precio >= '.$rango[0];
            $where .= ' AND Precio <= '.$rango[1];
        }
        
        $prepare = "SELECT * FROM inmuebles WHERE Ip_asignada != '".($_SERVER['REMOTE_ADDR'])."' ".$where." ORDER BY Id ASC;";
        $data = $database->query($prepare)->resultset();
        return $response['data']= $data;
    }

    public static function GetMyProperties()
    {
        $database = new conexion();
        $prepare = "SELECT * FROM inmuebles WHERE Ip_asignada = '".($_SERVER['REMOTE_ADDR'])."' ORDER BY Id ASC;";
        $data = $database->query($prepare)->resultset();
        return $response['data']= $data;
    }

    public function SaveMyProperties($data)
    {
        $id = $data['id'];
        $fecha = date("Y-m-d H:i:s");
        $database = new conexion();
        $prepare = "UPDATE inmuebles SET Estado='Asignado', Ip_asignada='".($_SERVER['REMOTE_ADDR'])."', fecha_asignacion= '".$fecha."' WHERE id=".$id;
        $data = $database->query($prepare)->execute();
        return $response['data']= $data;
    }

    public function RemoveMyProperties($data)
    {
        $id = $data['id'];
        $database = new conexion();
        $prepare = "UPDATE inmuebles SET Estado='No Asignado', Ip_asignada='0', fecha_asignacion= '' WHERE id=".$id;
        $data = $database->query($prepare)->execute();
        return $response['data']= $data;
    }
    
    public function ReportExcel($data)
    {            
        require_once '../libreria/PHPExcel/Classes/PHPExcel.php';
		$objPHPExcel = new \PHPExcel;
        
		$Report= array();
        $database = new conexion();
        $where = '';
        if(!empty($data['city'])){
            $where .= ' AND Ciudad = "'.$data['city'].'"';
        }
        if(!empty($data['type'])){
            $where .= ' AND Tipo = "'.$data['type'].'"';
        }
        
        $prepare = "SELECT * FROM inmuebles WHERE Ip_asignada != '".($_SERVER['REMOTE_ADDR'])."' ".$where." ORDER BY Id ASC;";
        $data = $database->query($prepare)->resultset();

        try {
			$objPHPExcel->getProperties()
	                    ->setCreator("Pruebas suplos")
	                    ->setLastModifiedBy("Pruebas suplos")
	                    ->setTitle("Reporte inmuebles.")
	                    ->setSubject("Reporte inmuebles.")
	                    ->setDescription("Reporte inmuebles.")
	                    ->setKeywords("")
	                    ->setCategory("reportes");

			$path = "../Reportes/";
			if(!file_exists($path)){
				mkdir($path, 0777, true);
			}
			if(count($data) > 0){
				$hoja =  1;
	        	$objPHPExcel->getActiveSheet()->setTitle("Reporte inmuebles");
				$count = 0;
                
                $objPHPExcel->getActiveSheet()
                    ->setCellValue("A1", "Dirección")
                    ->setCellValue("B1", "Ciudad")
                    ->setCellValue("C1", "Teléfono")
                    ->setCellValue("D1", "Código Postal")
                    ->setCellValue("E1", "Tipo Inmueble")
                    ->setCellValue("F1", "Precio");

                foreach($data as $i => $Inmuebles){
					$i = ($i+2)-$count;
                    $objPHPExcel->getActiveSheet()
                        ->setCellValue('A' . $i, $Inmuebles['Direccion'])
                        ->setCellValue('B' . $i, $Inmuebles['Ciudad'])
                        ->setCellValue('C' . $i, $Inmuebles['Telefono'])
                        ->setCellValue('D' . $i, $Inmuebles['Codigo_Postal'])
                        ->setCellValue('E' . $i, $Inmuebles['Tipo'])
                        ->setCellValue('F' . $i, $Inmuebles['Precio']);
                }
                foreach(range('A','T') as $columnID) { 
                    $objPHPExcel->getActiveSheet()->getColumnDimension($columnID)->setAutoSize(true); 
                }
            }

	        $objPHPExcel->setActiveSheetIndex(0);
            $nombre_archivo = 'reporte.xlsx';

	        $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
	        $archivo = $path.$nombre_archivo;
			$objWriter->save($archivo);
			$response['data'] = true;
			$response['url'] = $path.'/'.$nombre_archivo;
            return $response;
		} catch (Exception $e) {		
			$response['data']= $e;
			$response['url']= '';
			return $response;
			echo $e;
		}
    }
}