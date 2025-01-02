CREATE TABLE text_embedding
(
    embedding_uuid      UUID        DEFAULT gen_random_uuid() PRIMARY KEY,
    embedding_classname VARCHAR(128), -- may be repeated
    text_content        TEXT        NOT NULL,
    meta_content        JSON,
    embedding_model     VARCHAR(64) NOT NULL,
    embedding_1536      VECTOR(1536),
    embedding_3072      VECTOR(3072),
    created_at          TIMESTAMP   NOT NULL DEFAULT NOW(),
    updated_at          TIMESTAMP   NOT NULL DEFAULT NOW(),
    readers             VARCHAR
);

