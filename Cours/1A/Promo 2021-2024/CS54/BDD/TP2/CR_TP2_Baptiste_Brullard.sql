-- Baptiste BRULLARD 
-- Compte-rendu TP2-CS54 | BDD

-- Exercice 1 :
-- 1)
CREATE OR REPLACE FUNCTION CHARGES (p_salaire integer) RETURNS integer AS
$$
DECLARE 
	v_charges integer;
BEGIN
	v_charges := p_salaire * 0.45;
	RETURN v_charges;
END;
$$ LANGUAGE plpgsql;

SELECT first_name, salary, CHARGES(salary) as "Charges" from employees;
-- 104 lignes.

-- 2)
CREATE OR REPLACE PROCEDURE LOCATIONS(p_rue varchar DEFAULT 'Inconnu',p_ville varchar DEFAULT 'Paris') 
AS $$
BEGIN
	INSERT INTO locations(location_id, street_address, city)
	VALUES ((SELECT MAX(location_id) FROM locations) + 1, p_rue, p_ville);
END;
$$ language plpgsql;

CALL LOCATIONS();

-- 3)

-- a)
DO
$$
DECLARE
		employee_curs CURSOR FOR
		SELECT first_name,salary FROM employees
		WHERE department_id = (SELECT department_id FROM departments
							   WHERE department_name like 'Finance');
BEGIN
	FOR v_employee IN employee_curs LOOP
		IF v_employee.salary <= 10000 THEN
			RAISE NOTICE 'L''employé % gagne moins de 10 000$ => %', v_employee.first_name, v_employee.salary;
		END IF;	
	END LOOP;
END;
$$
-- 5 lignes.

-- b)
CREATE OR REPLACE PROCEDURE TEST_SERVICE(p_service varchar) AS
$$
DECLARE
		employee_curs CURSOR FOR
		SELECT first_name,salary FROM employees
		WHERE department_id = (SELECT department_id FROM departments
							   WHERE department_name like p_service);
		
		v_correspondance_department integer;
BEGIN
	SELECT COUNT(*) INTO v_correspondance_department FROM departments
	WHERE department_name like p_service;
	
	IF v_correspondance_department = 0 THEN
		RAISE EXCEPTION 'Le service % n''existe pas.', p_service;
	END IF;
	
	FOR v_employee IN employee_curs LOOP
		IF v_employee.salary <= 10000 THEN
			RAISE NOTICE 'L''employé % du service % gagne moins de 10 000$ => %.', 
				v_employee.first_name, p_service, v_employee.salary;
		END IF;	
	END LOOP;

END;
$$ language plpgsql;


-- c)
CALL TEST_SERVICE('IT')
--  5 lignes.

CALL TEST_SERVICE('Accounting')
-- 1 ligne.

CALL TEST_SERVICE('Executive')
-- 0 ligne.

CALL TEST_SERVICE('Fun')
-- Exception, service not found

-- 4)
CREATE OR REPLACE PROCEDURE SERVICES_SANS_CHEF() AS
$$
DECLARE
	departments_curs CURSOR FOR
	SELECT department_name FROM departments 
	WHERE manager_id IS NULL ORDER BY department_name ASC;
BEGIN
	FOR v_department IN departments_curs LOOP
		RAISE NOTICE '%', v_department.department_name;
	END LOOP;

END;
$$ language plpgsql;

CALL SERVICES_SANS_CHEF()
-- 16 lignes.

-- 5)
CREATE OR REPLACE PROCEDURE SERVICES_SANS_CHEF_VILLE(p_ville varchar) AS
$$
DECLARE
	departments_curs CURSOR FOR
	SELECT department_name FROM departments 
	WHERE manager_id IS NULL AND location_id = (SELECT location_id FROM locations
												WHERE city LIKE p_ville)
	ORDER BY department_name ASC;
BEGIN
	RAISE NOTICE 'Liste des départements sans chef localisés à % :', p_ville;
	FOR v_department IN departments_curs LOOP
		RAISE NOTICE '%', v_department.department_name;
	END LOOP;

END;
$$ language plpgsql;

CALL SERVICES_SANS_CHEF_VILLE('Seattle')
-- 16 lignes.

-- Exercice 2 :
-- 1)
DO
$$
DECLARE
    cur_salaire CURSOR FOR SELECT * FROM employees ORDER BY salary DESC LIMIT 5;
BEGIN
    FOR v IN cur_salaire LOOP
            RAISE NOTICE 'L''employé % % (email=%, téléphone=%) a été embauché le % et gagne %$',
			v.first_name, v.last_name,v.email,v.phone_number, v.hire_date, v.salary;
    END LOOP;
END $$;
-- 5 lignes.

-- 2)
CREATE OR REPLACE PROCEDURE TOP_N(p_nb integer) AS 
$$
DECLARE
    cur_salaire CURSOR FOR SELECT * FROM employees ORDER BY salary DESC;
    v_compteur integer;
BEGIN
    IF (p_nb < 0) THEN
        RAISE EXCEPTION 'Le nombre d''employés retournés (%) doit être strictement positif', p_nb;
    ELSE
        v_compteur := 1;
        FOR v IN cur_salaire LOOP
            IF (v_compteur <= p_nb) THEN 
				RAISE NOTICE 'L''employé % % (email=%, téléphone=%) a été embauché le % et gagne %$',
				v.first_name, v.last_name,v.email,v.phone_number, v.hire_date, v.salary;                
				v_compteur := v_compteur + 1;
            END IF;
        END LOOP;
    END IF;
END;
$$ LANGUAGE plpgsql

-- 3)
CALL TOP_N(5);
CALL TOP_N(11);


