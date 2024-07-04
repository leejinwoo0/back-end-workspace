-- 실습문제 (테이블 : employee) ---
-- 1. 부서코드(dept_code)가 'D1'인 사원들의 
-- 사원명(emp_name), 급여(salary), 부서코드만 조회 

SELECT emp_name, salary, dept_code
FROM employee
where dept_code = 'D1';


-- 부서배치를 아직 받지 않고 보너스는 받은 사원들의 
-- 이름, 보너스, 부서코드(dept_code) 조회 

SElECT emp_name, bonus, dept_code
FROM employee
WHERE dept_code IS NULL AND bonus IS NOT NULL;


-- 보너스를 받지 않는 사원(bonus 값이 null)들의
-- 사번(emp_id), 이름(emp_name), 급여(salary), 보너스(bonus) 조회 

SELECT emp_id, emp_name, salary, bonus
FROM employee
WHERE bonus IS NULL;

-- 사원들 중 성이 전씨인 사원들의 
-- 사원명(emp_name), 급여(salary), 입사일(hire_date) 조회

SELECT emp_name, salary, hire_date
FROM employee
WHERE emp_name LIKE '전%';


-- 전화번호의 3번째 자리가 1인 사원들의 
-- 사번(emp_id), 사원명, 전화번호, 이메일(email) 조회 

SELECT emp_id, emp_name, phone, email
FROM employee
WHERE phone LIKE '__1%';

-- 이메일 중 _ 앞글자가 3글자인 사원들의 사번, 이름, 이메일 조회 
-- 예) sun_di@kh.or.kr
-- ESCAPE OPTION : 나만의 와일드 카드를 만들어서 사용!

SELECT emp_id, emp_name, email
FROM employee
WHERE email LIKE '___\_%';

-- 부서코드가 D5, D6, D8인 부서원들의 이름, 부서코드, 급여 조회

SELECT emp_name, dept_code, salary
FROM employee
WHERE dept_code  In('D5', 'D6', 'D8');

-- 사번, 사원명 주민번호(emp_no), 성별(남, 여) - emp_no 활용해서! 조회

SELECT emp_id, emp_no, if(substr(emp_no, 8, 1) = 1, '남', '여') 성별
FROM employee;

-- 실습문제 --
-- 1. 이메일의 kh.or.kr 을 gmail.com으로 변경해서 이름, 변경 전 이메일, 변경 후 이메일 조회

SELECT emp_name, email '변경전', replace(email, 'kh.or.kr', 'gmail.com')
FROM employee;

-- 직급 코드(job_code)별 사원 수 조회
SELECT  job_code, count(*)
FROM employee
GROUP BY job_Code;

-- 부서별 평균 급여가 300만원 이상인 부서의 평균 급여 조회

SELECT dept_code, avg(salary) 평균급여
FROM employee
GROUP BY dept_code
HAVING 평균급여 >= 3000000;

-- 부서별 보너스를 받는 사원이 없는 부서만 조회

SELECT dept_code, count(bonus) 보너스
FROM employee
GROUP BY dept_code
HAVING 보너스 = 0;

 -- 실습문제 ---
 -- 1. 부서가 인사관리부인 사원들의 사번, 이름, 보너스 조회 (employee, department)
 
 SELECT * FROM employee;
 SELECT * FROM department;
 
 SELECT emp_id, emp_name, bonus
 FROM employee
 JOIN department ON (dept_code = dept_id)
 WHERE dept_title = '인사관리부';
 
 -- 2. 전체 부서의 부서코드, 부서명, 지역코드, 지역명 조회 (department, location)
 
 SELECT * FROM department;
 SELECT * FROM location;

SELECT dept_id, dept_title, local_code, local_name
FROM department
JOIN location ON (location_id = local_code);

-- 3. 보너스를 받는 사원들의 사번. 사원명, 보너스, 부서명 조회 (employee, department)

SELECT * FROM employee;
SELECT * FROM department;

SELECT emp_id, emp_name, bonus, dept_title
FROM employee
JOIN department ON (dept_code = dept_id)
WHERE bonus IS NOT NULL;

-- 실습문제 --
-- 1. 직급이 대리면서 ASIA 지역에서 근무하는 직원들의 사번, 직원명 ,직급명, 부서명 ,근무지역, 급여조회

SELECT emp_id, emp_name, job_name, de
