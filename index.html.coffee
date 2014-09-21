# Copyright (c) 2013, 2014 Michele Bini

# This program is free software: you can redistribute it and/or modify
# it under the terms of the version 3 of the GNU General Public License
# as published by the Free Software Foundation.

# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

{ htmlcup } = require 'htmlcup'

title = "Vaquitas need you!"

fs = require 'fs'

icon = "vaquita.ico"
icon = "data:image/x-icon;base64," + (new Buffer(fs.readFileSync(icon))).toString("base64")

htmlcup.html5Page ->
  @head ->
    @link rel:"shortcut icon", href:icon
    @title title
    @style type: "text/css",
      ''''
      body {
        /* background:pink; */
        /* background: #69B2FF; */
        /* background: #21AFF8; */
        /* background: #0286E8; */
         background: #1096EE;
        text-align: center;
        font-size: 22px;
        font-family: Helvetica;
      }
      .banner {
        border: 4px solid white;
        border: 4px solid white rgba(255,255,255,0.9);
        box-shadow: 0 2px 4px blue;
        margin: 1em;
      }
      p {
        color:white;
        color:rgba(255,255,255,0.9);
        width:20em;
        margin-top:0.418em;
        margin-bottom:0.418em;
        margin-left:auto;
        margin-right:auto;
        max-width:20em;
        text-shadow: 0 1px 1px blue;
      }
      a {
        /*
        color:rgb(200,255,255);
        color:rgba(200,255,255,0.9);
        */
        color:white;
        color:rgba(255,255,255,0.9);
        text-decoration:none;
        display: inline-block;
        border: 1px solid white;
        padding: 0 0.2em;
        border-radius: 0.2em;
        -moz-border-radius: 0.2em;
        -webkit-border-radius: 0.2em;
        -ie-border-radius: 0.2em;
      }
      a:hover {
        background-color:rgba(20,70,180,1.0);
      }
      .petition {
        margin:0.418em;
        padding:0.618em;
      }
      .petition a {
        font-size:127.2%;
        box-shadow: 0 2px 4px blue;
        margin:0.3em;
      }
      .centering {
        display: table;
        padding: 0;
        width: 100%;
        height: 100%;
      }
      .centered {
        display: table-cell;
        vertical-align: middle;
        text-align: center;
      }
    do->
      ''''
      .centering {
        text-align:center;
      }
      .centering:before {
        content: '';
        display: inline-block;
        height: 100%;
        vertical-align: middle;
        margin-right: -0.25em;
      }
      .centered {
        display:inline-block;
        vertical-align:middle;
      }
  @body ->
    @div class:"centering", ->
     @div class:"centered", ->
      @div style:"display:inline-block", ->
        @link rel:"shortcut icon", href:icon
        @img class:"banner", src:"vaquita1.jpg", title:"This vaquita was set free by a mysterious artist who prefers to stay anonymous ☺"
      @div style:"display:inline-block", ->
        @p "Please don't kill this baby!"
        @p "Vaquitas are the smallest and rarest marine cetacean; they are mammalians like us."
        @p ->
          @span "Their population has decreased from an estimated 576 in 1997 to 97 individuals in 2014, which means that could be extinct as early as 2017"
        @p "A really protected marine sactuary is Vaquitas' only chance of survival; each year literally tens of them die in fishing nets and cages; according to recent research, this is because of the illegal fishing of Totoaba"
        @p "Vaquitas only live in a small stretch in the Gulf of California and share their habitat with the Totoaba"
        @p class:"petition", ->
          @span 'Petition you can sign: '
          @a href: 'http://www.thepetitionsite.com/569/482/287/extend-protections-for-critically-endangered-vaquita-porpoises/', "Protected Reserves for Critically Endangered Vaquita Porpoises"
        @p ->
          @a href: 'http://www.youtube.com/watch?v=27pJ2S5RT8g', "Commemorative video of a baby Vaquita"
