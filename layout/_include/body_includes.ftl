<script src="//cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"
        integrity="sha256-EGs9T1xMHdvM1geM8jPpoo8EZ1V1VRsmcJz8OByENLA=" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
        integrity="sha256-VsEqElsCHSGmnmHXGQzvoWjWwoznFSZc6hs7ARLRacQ=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.10/dist/vue.min.js"
        integrity="sha256-chlNFSVx3TdcQ2Xlw7SvnbLAavAQLO0Y/LBiWX04viY=" crossorigin="anonymous"></script>
<script src="//cdn.jsdelivr.net/npm/smooth-scroll@14.2.1/dist/smooth-scroll.polyfills.min.js"
        integrity="sha256-CI4Gq5E0io1Pv0xM3qPM+NUIOhbIBvC3GiN1Y4KhXpw=" crossorigin="anonymous"></script>
<script src="${static!}/source/js/journal.js"></script>

<!-- Import prettify js  -->
<#if settings.prettify_enable!false>
    <#if is_post?? || is_sheet??>
        <script src="${static!}/source/js/prettify.min.js"></script>
        <script>
            $(function() {
                $('pre').addClass('prettyprint linenums').attr('style', 'overflow:auto;');
                prettyPrint();
            })
        </script>
    </#if>
</#if>
