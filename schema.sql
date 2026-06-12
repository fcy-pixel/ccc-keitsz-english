CREATE TABLE IF NOT EXISTS resources (
  id TEXT PRIMARY KEY,
  title TEXT NOT NULL,
  creator TEXT NOT NULL,
  grade TEXT NOT NULL,
  topic TEXT NOT NULL,
  url TEXT NOT NULL,
  description TEXT NOT NULL,
  tags TEXT NOT NULL DEFAULT '[]',
  created_at INTEGER NOT NULL
);

INSERT OR IGNORE INTO resources (id, title, creator, grade, topic, url, description, tags, created_at) VALUES
('s1', 'Phonics Frog Jump 🐸', 'Miss Wong', 'P1', 'Phonics & Spelling', 'https://example.com/phonics-frog-jump', 'Help the frog hop across the pond by choosing the right beginning sounds. Great for warm-ups!', '["game","sounds"]', 1765500000001),
('s2', 'Word Wizard Flashcards 🪄', 'Mr. Lee', 'P2', 'Vocabulary', 'https://example.com/word-wizard', 'Magical flashcards with pictures and audio. Pupils flip, listen and match words about school and family.', '["flashcards","audio"]', 1765500000002),
('s3', 'Tense Time Machine ⏰', 'Miss Chan', 'P4', 'Grammar', 'https://example.com/tense-time-machine', 'Travel to the past, present and future! Choose the correct verb form to power the time machine.', '["quiz","past tense","interactive"]', 1765500000003),
('s4', 'Sentence Builder Blocks 🧱', 'Mr. Ho', 'P3', 'Sentence Writing', 'https://example.com/sentence-blocks', 'Drag word blocks to build super sentences with subjects, verbs and objects. Three challenge levels!', '["drag-and-drop","challenge"]', 1765500000004),
('s5', 'Reading Rocket 🚀', 'Miss Cheung', 'P5', 'Reading', 'https://example.com/reading-rocket', 'Short fun stories with comprehension questions. Answer correctly to launch the rocket higher!', '["stories","comprehension"]', 1765500000005),
('s6', 'Listening Lab 🎧', 'Mr. Lam', 'P4', 'Listening', 'https://example.com/listening-lab', 'Listen to short dialogues and click the right pictures. Includes exam-style listening practice.', '["audio","exam practice"]', 1765500000006),
('s7', 'Speaking Star Stage 🎤', 'Miss Wong', 'P6', 'Speaking & Chants', 'https://example.com/speaking-star', 'Record yourself reading aloud and earn shining stars. Perfect for speaking exam preparation.', '["recording","stars"]', 1765500000007),
('s8', 'Spelling Bee Challenge 🐝', 'Mr. Lee', 'P5', 'Quizzes & Games', 'https://example.com/spelling-bee', 'Beat the buzzer! Spell the words you hear before the bee flies away. Class leaderboard included.', '["game","timer","leaderboard"]', 1765500000008);
