student(sai, csa1732).
teacher(sarvanan, csa1732).
subject_code(csa1732, 'AI1732').
student_subject(Student, SubjectCode) :-
    student(Student, SubjectCode).
student_teacher(Student, Teacher) :-
    student(Student, SubjectCode), teacher(Teacher, SubjectCode).
teacher_subject(Teacher, SubjectCode) :-
    teacher(Teacher, SubjectCode).
subject_name(SubjectCode, SubjectName) :-
    subject_code(SubjectCode, SubjectName).
student_subject_name(Student, SubjectName) :-
    student(Student, SubjectCode), subject_code(SubjectCode, SubjectName).
student_teacher_subject(Student, Teacher, SubjectName) :-
    student(Student, SubjectCode), teacher(Teacher, SubjectCode), subject_code(SubjectCode, SubjectName).
