    (function() {
        'use strict';

        function PostsController() {

            var vm = this;

            // vm callable methods
            vm.test = "Hello World"
            vm.getPosts = getPosts;
            vm.getPost = getPost;
            vm.createPost = createPost;
            vm.updatePost = updatePost;
            vm.deletePost = deletePost;

            // instatiaded functions
            activate();

            // defined methods
            function activate() {
                getPosts()
            }
            // INDEX
            function getPosts() {

            }

            // SHOW
            function getPost() {

            }

            // CREATE
            function createPost() {

            }

            // UPDATE
            function updatePost() {

            }

            // DELETE
            function deletePost() {

            }
        };

        angular
            .module('app')
            .controller('PostsController', PostsController);
    }());
