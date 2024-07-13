// import 'dart:io';
//
// void main() {
//   Library library = Library();
//   bool running = true;
//
//   while (running) {
//     print('\nLibrary Management System');
//     print('1. Add a book');
//     print('2. Display all books');
//     print('3. Edit a book');
//     print('4. Delete a book');
//     print('5. Exit');
//     stdout.write('Choose an option: ');
//
//     String? choice = stdin.readLineSync();
//
//     switch (choice) {
//       case '1':
//         library.addBook();
//         break;
//       case '2':
//         library.displayBooks();
//         break;
//       case '3':
//         library.editBook();
//         break;
//       case '4':
//         library.deleteBook();
//         break;
//       case '5':
//         running = false;
//         print('Exiting...');
//         break;
//       default:
//         print('Invalid option. Please try again.');
//     }
//   }
// }
//
// class Library {
//   List<Map<String, dynamic>> books = [];
//
//   void addBook() {
//     stdout.write('Enter book title: ');
//     String? title = stdin.readLineSync();
//
//     stdout.write('Enter book author: ');
//     String? author = stdin.readLineSync();
//
//     stdout.write('Enter book year: ');
//     String? yearInput = stdin.readLineSync();
//     int? year = int.tryParse(yearInput ?? '');
//
//     if (title != null && author != null && year != null) {
//       books.add({'title': title, 'author': author, 'year': year});
//       print('Book added successfully.');
//     } else {
//       print('Invalid input. Could not add book.');
//     }
//   }
//
//   void displayBooks() {
//     if (books.isNotEmpty) {
//       print('Books in library:');
//       for (var i = 0; i < books.length; i++) {
//         var book = books[i];
//         print('${i + 1}. Title: ${book['title']}, Author: ${book['author']}, Year: ${book['year']}');
//       }
//     } else {
//       print('No books in the library.');
//     }
//   }
//
//   void editBook() {
//     displayBooks();
//     stdout.write('Enter the number of the book you want to edit: ');
//     String? choice = stdin.readLineSync();
//     int? index = int.tryParse(choice ?? '') ?? -1;
//
//     if (index > 0 && index <= books.length) {
//       var book = books[index - 1];
//       stdout.write('Enter new title (leave empty to keep "${book['title']}"): ');
//       String? newTitle = stdin.readLineSync();
//       stdout.write('Enter new author (leave empty to keep "${book['author']}"): ');
//       String? newAuthor = stdin.readLineSync();
//       stdout.write('Enter new year (leave empty to keep "${book['year']}"): ');
//       String? newYearInput = stdin.readLineSync();
//       int? newYear = int.tryParse(newYearInput ?? '') ?? book['year'];
//
//       if (newTitle != null && newTitle.isNotEmpty) {
//         book['title'] = newTitle;
//       }
//       if (newAuthor != null && newAuthor.isNotEmpty) {
//         book['author'] = newAuthor;
//       }
//       book['year'] = newYear;
//
//       print('Book updated successfully.');
//     } else {
//       print('Invalid book number.');
//     }
//   }
//
//   void deleteBook() {
//     displayBooks();
//     stdout.write('Enter the number of the book you want to delete: ');
//     String? choice = stdin.readLineSync();
//     int? index = int.tryParse(choice ?? '') ?? -1;
//
//     if (index > 0 && index <= books.length) {
//       books.removeAt(index - 1);
//       print('Book deleted successfully.');
//     } else {
//       print('Invalid book number.');
//     }
//   }
// }

///

// import 'dart:io';
//
// void main() {
//   List<Map<String, dynamic>> books = [];
//
//   bool running = true;
//
//   while (running) {
//     print('\nLibrary Management System');
//     print('1. Add a book');
//     print('2. Display all books');
//     print('3. Edit a book');
//     print('4. Delete a book');
//     print('5. Exit');
//     stdout.write('Choose an option: ');
//
//     String? choice = stdin.readLineSync();
//
//     switch (choice) {
//       case '1':
//         addBook(books);
//         break;
//       case '2':
//         displayBooks(books);
//         break;
//       case '3':
//         editBook(books);
//         break;
//       case '4':
//         deleteBook(books);
//         break;
//       case '5':
//         running = false;
//         print('Exiting...');
//         break;
//       default:
//         print('Invalid option. Please try again.');
//     }
//   }
// }
//
// void addBook(List<Map<String, dynamic>> books) {
//   stdout.write('Enter book title: ');
//   String? title = stdin.readLineSync();
//
//   stdout.write('Enter book author: ');
//   String? author = stdin.readLineSync();
//
//   stdout.write('Enter book year: ');
//   String? yearInput = stdin.readLineSync();
//   int? year = int.tryParse(yearInput ?? '');
//
//   if (title != null && author != null && year != null) {
//     books.add({'title': title, 'author': author, 'year': year});
//     print('Book added successfully.');
//   } else {
//     print('Invalid input. Could not add book.');
//   }
// }
//
// void displayBooks(List<Map<String, dynamic>> books) {
//   if (books.isNotEmpty) {
//     print('Books in library:');
//     for (var i = 0; i < books.length; i++) {
//       var book = books[i];
//       print(
//           '${i + 1}. Title: ${book['title']}, Author: ${book['author']}, Year: ${book['year']}');
//     }
//   } else {
//     print('No books in the library.');
//   }
// }
//
// void editBook(List<Map<String, dynamic>> books) {
//   displayBooks(books);
//   stdout.write('Enter the number of the book you want to edit: ');
//   String? choice = stdin.readLineSync();
//   int? index = int.tryParse(choice ?? '') ?? -1;
//
//   if (index > 0 && index <= books.length) {
//     var book = books[index - 1];
//     stdout.write('Enter new title (leave empty to keep "${book['title']}"): ');
//     String? newTitle = stdin.readLineSync();
//     stdout
//         .write('Enter new author (leave empty to keep "${book['author']}"): ');
//     String? newAuthor = stdin.readLineSync();
//     stdout.write('Enter new year (leave empty to keep "${book['year']}"): ');
//     String? newYearInput = stdin.readLineSync();
//     int? newYear = int.tryParse(newYearInput ?? '') ?? book['year'];
//
//     if (newTitle != null && newTitle.isNotEmpty) {
//       book['title'] = newTitle;
//     }
//     if (newAuthor != null && newAuthor.isNotEmpty) {
//       book['author'] = newAuthor;
//     }
//     book['year'] = newYear;
//
//     print('Book updated successfully.');
//   } else {
//     print('Invalid book number.');
//   }
// }
//
// void deleteBook(List<Map<String, dynamic>> books) {
//   displayBooks(books);
//   stdout.write('Enter the number of the book you want to delete: ');
//   String? choice = stdin.readLineSync();
//   int? index = int.tryParse(choice ?? '') ?? -1;
//
//   if (index > 0 && index <= books.length) {
//     books.removeAt(index - 1);
//     print('Book deleted successfully.');
//   } else {
//     print('Invalid book number.');
//   }
// }

///

import 'dart:io';

void main() {
  Map<String, dynamic> studentManagementSystem = {
    'students': <Map<String, dynamic>>[]
  };

  bool running = true;

  while (running) {
    print('\nStudent Management System');
    print('1. Add a student');
    print('2. Display all students');
    print('3. Edit a student');
    print('4. Delete a student');
    print('5. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addStudent(studentManagementSystem);
        break;
      case '2':
        displayStudents(studentManagementSystem);
        break;
      case '3':
        editStudent(studentManagementSystem);
        break;
      case '4':
        deleteStudent(studentManagementSystem);
        break;
      case '5':
        running = false;
        print('Exiting...');
        break;
      default:
        print('Invalid option. Please try again.');
    }
  }
}

void addStudent(Map<String, dynamic> studentManagementSystem) {
  stdout.write('Enter student name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter student age: ');
  String? ageInput = stdin.readLineSync();
  int? age = int.tryParse(ageInput ?? '');

  stdout.write('Enter student grade: ');
  String? gradeInput = stdin.readLineSync();
  double? grade = double.tryParse(gradeInput ?? '');

  if (name != null && age != null && grade != null) {
    studentManagementSystem['students']!.add({
      'name': name,
      'age': age,
      'grade': grade,
    });
    print('Student added successfully.');
  } else {
    print('Invalid input. Could not add student.');
  }
}

void displayStudents(Map<String, dynamic> studentManagementSystem) {
  List<Map<String, dynamic>> students = studentManagementSystem['students'];

  if (students.isNotEmpty) {
    print('Students in system:');
    for (var i = 0; i < students.length; i++) {
      var student = students[i];
      print(
          '${i + 1}. Name: ${student['name']}, Age: ${student['age']}, Grade: ${student['grade']}');
    }
  } else {
    print('No students in the system.');
  }
}

void editStudent(Map<String, dynamic> studentManagementSystem) {
  displayStudents(studentManagementSystem);
  stdout.write('Enter the number of the student you want to edit: ');
  String? choice = stdin.readLineSync();
  int? index = int.tryParse(choice ?? '') ?? -1;

  List<Map<String, dynamic>> students = studentManagementSystem['students'];

  if (index > 0 && index <= students.length) {
    var student = students[index - 1];
    stdout.write('Enter new name (leave empty to keep "${student['name']}"): ');
    String? newName = stdin.readLineSync();
    stdout.write('Enter new age (leave empty to keep "${student['age']}"): ');
    String? newAgeInput = stdin.readLineSync();
    int? newAge = int.tryParse(newAgeInput ?? '') ?? student['age'];
    stdout
        .write('Enter new grade (leave empty to keep "${student['grade']}"): ');
    String? newGradeInput = stdin.readLineSync();
    double? newGrade = double.tryParse(newGradeInput ?? '') ?? student['grade'];

    if (newName != null && newName.isNotEmpty) {
      student['name'] = newName;
    }
    student['age'] = newAge;
    student['grade'] = newGrade;

    print('Student updated successfully.');
  } else {
    print('Invalid student number.');
  }
}

void deleteStudent(Map<String, dynamic> studentManagementSystem) {
  displayStudents(studentManagementSystem);
  stdout.write('Enter the number of the student you want to delete: ');
  String? choice = stdin.readLineSync();
  int? index = int.tryParse(choice ?? '') ?? -1;

  List<Map<String, dynamic>> students = studentManagementSystem['students'];

  if (index > 0 && index <= students.length) {
    students.removeAt(index - 1);
    print('Student deleted successfully.');
  } else {
    print('Invalid student number.');
  }
}
