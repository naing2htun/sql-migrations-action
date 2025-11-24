CREATE TABLE IF NOT EXISTS categories (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL UNIQUE, -- noqa: RF04, name is non-reserved word
    image TEXT NOT NULL,
    active BOOLEAN NOT NULL DEFAULT TRUE,
    translations JSONB NOT NULL DEFAULT '{}',
    created_at TIMESTAMPTZ DEFAULT NOW(),
    created_by TEXT NOT NULL,
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    updated_by TEXT NOT NULL
);
