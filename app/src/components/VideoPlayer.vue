<template>
    <div class='video-player'>
        <div class="video-container">
            <iframe :src="this.activeVideo.youtubeURL" width="640" height="360" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
            <h3>{{this.activeVideo.title}}</h3>
            <div class="row">
                <p>{{this.activeVideo.views}} views</p>
                <p>{{this.activeVideo.likes}} <button @click="addLike()">Like</button></p>
            </div>
        </div>
        <div class="video-list">
            <div @click="chooseVideo(video)" :key="video.id" v-for="video in videos" class="thumbnail">
                <div class="thumbnail-img">
                    <img :src="video.thumbnail" />
                </div>
                <div class="thumbnail-info">
                    <h3>{{video.title}}</h3>
                    <p>{{video.creator}}</p>
                    <p class="thumbnail-views">{{video.views}} Views</p>
                </div>
            </div>
        </div>
    </div>
</template>

<script>
let videos = [
    {
        id: 1,
        title: 'AamazonClone - An amazon clone',
        thumbnail: 'https://img.youtube.com/vi/TTtvJssaFgA/0.jpg',
        youtubeURL: 'https://www.youtube.com/embed/TTtvJssaFgA',
        creator: 'Jeury Mejia',
        likes: 0,
        views: 1
    },
    {
        id: 2,
        title: 'FaceClone - A facebook clone',
        thumbnail: 'http://img.youtube.com/vi/MUFcK2pwnGc/0.jpg',
        youtubeURL: 'https://www.youtube.com/embed/MUFcK2pwnGc',
        creator: 'Jeury Mejia',
        likes: 0,
        views: 0
    },
    {
        id: 3,
        title: 'Nameless Python Game - GamePlay',
        thumbnail: 'https://img.youtube.com/vi/csoYfiCFju4/0.jpg',
        youtubeURL: 'https://www.youtube.com/embed/csoYfiCFju4',
        creator: 'Jeury Mejia',
        likes: 0,
        views: 0
    },
    {
        id: 4,
        title: 'CS 490 Project - Release Version Demo (December 2017)',
        thumbnail: 'http://img.youtube.com/vi/qNahJ7HPGjk/0.jpg',
        youtubeURL: 'https://www.youtube.com/embed/qNahJ7HPGjk',
        creator: 'Michael Anderson',
        likes: 0,
        views: 0
    },
    {
        id: 5,
        title: 'Classmo - Final project for CS491 (capstone)',
        thumbnail: 'http://img.youtube.com/vi/Z0_JhfaLb5o/0.jpg',
        youtubeURL: 'https://www.youtube.com/embed/Z0_JhfaLb5o',
        creator: 'Jeury Mejia',
        likes: 0,
        views: 0
    },
    {
        id: 6,
        title: 'An NJIT Advisement system - CS370 Final Project',
        thumbnail: 'http://img.youtube.com/vi/c6vjW5ljTJE/0.jpg',
        youtubeURL: 'https://www.youtube.com/embed/c6vjW5ljTJE',
        creator: 'Jeury Mejia',
        likes: 0,
        views: 0
    },
    {
        id: 7,
        title: 'EggTimer - macOS development tutorial result',
        thumbnail: 'https://img.youtube.com/vi/ck0gbznoJQw/0.jpg',
        youtubeURL: 'https://www.youtube.com/embed/ck0gbznoJQw',
        creator: 'Jeury Mejia',
        likes: 0,
        views: 0
    }
]

export default {
    name: 'VideoPlayer',
    data () {
        return {
            videos,
            activeVideo: videos[0]
        }
    },
    methods: {
        chooseVideo (video) {
            // setting video as active video
            this.activeVideo = video
            // increase the videos views by 1
            video.views += 1
        },
        addLike () {
            this.activeVideo.likes += 1
        }
    }
}
</script>

<style scoped>
.thumbnail {
    display: flex;
}

.thumbnail img {
    width: 168px;
}

.thumbnail-info {
    margin-left: 20px;
}

.thumbnail h3 {
    font-size: 16px;
}

h3, p {
    margin: 0;
    padding: 0;
}

.thumbnail-views {
    font-size: 14px;
}

.video-player {
    display: flex;
    width: 1200px;
    margin: auto;
}

.video-container {
    margin-right: 40px;
}

.row {
    display: flex;
    justify-content: space-between;
}

button {
    background: #D0021B;
    color: white;
    border: none;
    padding: 10px 20px;
}
</style>
