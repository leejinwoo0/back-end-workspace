-- 아래의 SQL 구문은 부서 별 평균 월급이 280만원을 초과하는 부서를 조회한 것이다.
-- 결과가 올바르지 않다고 할 때, 그 원인(20점)과 올바르게 수정한 SQL문을 조치내용(20점)에 작성하시오. (총 40점)



SELECT  dept_code, sum(salary) 합계, avg(salary) 평균, count(*) 

FROM employee

GROUP BY dept_code

HAVING 평균 > 2800000;

-- WHERE절과 ORDER BY절을 없앤뒤 GROUP BY절 아래에 HAVING 평균 > 2800000; 라고 써줘야함


-- 아래의 SQL 구문은 보너스를 받은 사원들의 직급별 평균 급여가 300만원 이상을 초과하는 직급만 조회한 것이다.
-- 결과가 올바르지 않다고 할 때, 그 원인(30점)을 작성하고, 올바르게 수정한 SQL 문을 조치내용(30점)에 작성하시오. (총 60점)


SELECT job_code 직급코드, avg(salary) 평균급여

FROM employee

GROUP BY job_code
 
HAVING count(bonus) AND avg(salary) > 3000000;
-- job_code 옆에 직급코드, avg(salary)옆에 평균급여라 써줘야함
-- HAVING절에 bonus is not null 이아니라 count(bonus)가 들어와야함, avg(salary)대신 평균급여라쓰기
