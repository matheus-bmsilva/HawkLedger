-- Inserindo usuário
INSERT INTO users (name, email)
VALUES ('Yuri Roberto', 'protagonista@artilheiro.com');

-- Inserindo categorias
INSERT INTO categories (name)
VALUES ('Food'), ('Transport'), ('Entertainment');

-- Inserindo transações
INSERT INTO transactions (transaction_date, amount, type, description, category_id, user_id)
VALUES 
('2026-04-01', -50.00, 'expense', 'Lunch', 1, 1),
('2026-04-02', -20.00, 'expense', 'Uber', 2, 1),
('2026-04-03', 2000.00, 'income', 'Salary', NULL, 1);
