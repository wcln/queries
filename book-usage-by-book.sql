-- Book Usage (by book):  Book name, Module ID, Course Name, Course ID, Book called
select lti.name as 'Book Name', course_modules.id as "Module ID", course.shortname as 'Course name (short)', course.id as 'Course ID' from mdl_course_modules course_modules
join mdl_modules modules on course_modules.module = modules.id
join mdl_lti lti on course_modules.`instance` = lti.id
join mdl_course course on course.id = course_modules.course 
where modules.name = 'lti' and lti.typeid = 19
and course.category = 9 -- Change the category ID as required
order by lti.name asc