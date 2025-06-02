-- 1.1  Base
CREATE DATABASE IF NOT EXISTS social_analytics DEFAULT CHARACTER
SET
    utf8mb4;

USE social_analytics;

-- 1.2  Tables
CREATE TABLE IF NOT EXISTS Platform (
    platform_id CHAR(1) PRIMARY KEY, -- ‘B’ = Bluesky, ‘X’ = X/Twitter …
    platform_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS User (
    user_id VARCHAR(191) PRIMARY KEY, -- gère à la fois les IDs numériques et les DID Bluesky
    platform_id CHAR(1) NOT NULL,
    user_name TEXT,
    bio TEXT,
    followers_count INT,
    follows_count INT,
    CONSTRAINT fk_user_platform FOREIGN KEY (platform_id) REFERENCES Platform (platform_id)
);

CREATE TABLE IF NOT EXISTS Post (
    post_id VARCHAR(191) PRIMARY KEY, -- idem : tweet-ID / at://…
    platform_id CHAR(1) NOT NULL,
    user_id VARCHAR(191) NOT NULL,
    post_text TEXT,
    url TEXT,
    lang CHAR(5),
    post_date DATE,
    reply_count INT,
    quote_count INT,
    view_count INT,
    retweet_count INT,
    CONSTRAINT fk_post_platform FOREIGN KEY (platform_id) REFERENCES Platform (platform_id),
    CONSTRAINT fk_post_user FOREIGN KEY (user_id) REFERENCES User (user_id)
);
