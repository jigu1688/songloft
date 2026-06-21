-- +goose Up
UPDATE songs SET format = 'aac' WHERE file_path LIKE '%.aac' AND format = 'm4a';

-- +goose Down
UPDATE songs SET format = 'm4a' WHERE file_path LIKE '%.aac' AND format = 'aac';
