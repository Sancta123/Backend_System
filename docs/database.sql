SQL
CREATE DATABASE studentregistration;

USE studentregistration;

CREATE TABLE Students (
  student_id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(100),
  email VARCHAR(100),
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Courses (
  courses_id INT AUTO_INCREMENT PRIMARY KEY,
  course_name VARCHAR(100),
  description TEXT,
  duration VARCHAR(50)
);

CREATE TABLE Enrollments (
  enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
  student_id INT,
  course_id INT,
  enrollment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (course_id)  REFERENCES Courses(course_id)
);
