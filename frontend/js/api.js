const api = {

  /**
   * Récupérer la liste des taches de l'API
   */
  getTasksList: async function ()
  {
    try {
    
      let response = await fetch('http://127.0.0.1:8000/api/tasks', {
        method: 'GET'
      });

      return await response.json();

    } catch (error) {
      console.log(error);
      return false;
    }
  },

  /**
   * Créer une nouvelle tâche
   * 
   * @param {*} title 
   */
  createTask: async function(title, category)
  {
    try {
    
      let response = await fetch('http://127.0.0.1:8000/api/tasks', {
        method: 'POST',
        headers: {
          'Content-type': 'application/json'
        },
        body: JSON.stringify({
          title: title,
          category_id: category
        })
      });

      return await response.json();

    } catch (error) {
      console.log(error);
      return false;
    }
  },

  /**
   * Méthode utilisée pour supprimer une tâche
   * 
   * @param {int} id 
   */
  deleteTask: async function(id)
  {
    const response = await fetch('http://127.0.0.1:8000/api/tasks/' + id, {
      method: 'DELETE'
    });
    return response.status
    //console.log(response);
  },

  /**
   * Récupérer la liste des catégories
   * 
   * @returns 
   */
  getCategoriesList: async function()
  {
    try {
    
      let response = await fetch('http://127.0.0.1:8000/api/categories', {
        method: 'GET'
      });

      return await response.json();

    } catch (error) {
      console.log(error);
      return false;
    }
   
  }
}