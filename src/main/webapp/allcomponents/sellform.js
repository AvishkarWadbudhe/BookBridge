/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


var categoriesSelect = document.getElementById('categories');
var subcategoriesSelect = document.getElementById('subcategories');

// Populate the categories select element
categoriesSelect.innerHTML = '<option value="">Select Category</option>' +
                           '<option value="school">School Books</option>' +
                           '<option value="college">College Books</option>' +
                           '<option value="university">University Books</option>';

function updateSubcategories() {
  // Get the selected category
  var selectedCategory = categoriesSelect.value;

  // Clear the subcategories select element
  subcategoriesSelect.innerHTML = '<option value="">Select Subcategory</option>';

  // Populate the subcategories based on the selected category
  switch (selectedCategory) {
    case 'school':
      subcategoriesSelect.innerHTML += '<option value="1-10">Classes 1-10</option>' +
                                     '<option value="11-12">Classes 11-12</option>' +
                                     '<option value="competitive">Competitive Exams</option>';
      break;
    case 'college':
      subcategoriesSelect.innerHTML += '<option value="engineering">Engineering</option>' +
                                     '<option value="medical">Medical</option>' +
                                     '<option value="commerce">Commerce</option>';
      break;
    case 'university':
      subcategoriesSelect.innerHTML += '<option value="undergraduate">Undergraduate</option>' +
                                     '<option value="postgraduate">Postgraduate</option>' +
                                     '<option value="research">Research</option>';
      break;
    // Add more cases for other categories as needed
  }
}
