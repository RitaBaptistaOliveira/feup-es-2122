
String imgPath = 'assets/myImages/map_.png';
String spotToShow = 'Spots';
String departmentToShow = 'Departamentos';
String floorToShow = 'Pisos';


final Map<String, String> itemMap = {
  'none': 'map_',
  'Civil': 'map_civil',
  'Minas': 'map_minas',
  'Gestão Industrial': 'map_gestaoindustrial',
  'Eletrónica e de Computadores': 'map_eletronica',
  'Física': 'map_fisica',
  'Informática': 'map_informatica',
  'Mecânica': 'map_mecanica',
  'Metalúrgica e de Materiais': 'map_metalurgica',
  'Química': 'map_quimica'
};


final Map<String, List<List<double>>> spotsMapCafe = {
  'none': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]], //piso 0, 1, ...
  'Civil': [[140, 200], [-100, -100], [200, 250], [-100, -100], [-100, -100], [300, 250], [-100, -100]],
  'Minas': [[190, 150], [175, 315], [-100, -100], [150, 100], [200, 275], [-100, -100], [200, 300]],
  'Gestão Industrial': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Eletrónica e de Computadores': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Física': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Informática': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Mecânica': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Metalúrgica e de Materiais': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Química': [[200, 250], [200, 250], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]]
};
final Map<String, List<List<double>>> spotsMapSnacks = {
  'none': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]], //piso 0, 1, ...
  'Civil': [[250, 200], [250, 375], [-100, -100], [180, 315], [200, 150], [-100, -100], [-100, -100]],
  'Minas': [[150, 100], [400, 200], [-100, -100], [-100, -100], [-100, -100], [200, 300], [-100, -100]],
  'Gestão Industrial': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Eletrónica e de Computadores': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Física': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Informática': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Mecânica': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Metalúrgica e de Materiais': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Química': [[200, 250], [200, 250], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]]
};
final Map<String, List<List<double>>> spotsMapWC = {
  'none': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]], //piso 0, 1, ...
  'Civil': [[-100, -100], [150, 350], [-100, -100], [-100, -100], [200, 300], [-100, -100], [-100, -100]],
  'Minas': [[100, 150], [145, 400], [-100, -100], [245, 150], [-100, -100], [-100, -100], [-100, -100]],
  'Gestão Industrial': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Eletrónica e de Computadores': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Física': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Informática': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Mecânica': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Metalúrgica e de Materiais': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Química': [[200, 250], [200, 250], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]]
};
final Map<String, List<List<double>>> spotsMapMB = {
  'none': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]], //piso 0, 1, ...
  'Civil': [[350, 415], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Minas': [[130, 415], [160, 200], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Gestão Industrial': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Eletrónica e de Computadores': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Física': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Informática': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Mecânica': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Metalúrgica e de Materiais': [[-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]],
  'Química': [[200, 250], [200, 250], [-100, -100], [-100, -100], [-100, -100], [-100, -100], [-100, -100]]
};
