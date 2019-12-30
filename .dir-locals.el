((nil . ((eval . (cl-flet ((path (dir) (concat (projectile-project-root) dir)))
                   (setq org-publish-project-alist
                         (list
                          (list "pages"
                                :base-directory (path "src")
                                :publishing-directory (path "public")
                                :recursive t
                                :base-extension "org"
                                :exclude ".*-config.org"
                                :auto-sitemap t
                                :sitemap-filename "sitemap.org"
                                :sitemap-title ""
                                :sitemap-style 'list
                                :publishing-function 'org-html-publish-to-html)
                          (list "styles"
                                :base-directory (path "src/styles")
                                :publishing-directory (path "public/styles")
                                :recursive t
                                :base-extension "css"
                                :publishing-function 'org-publish-attachment)
                          (list "scripts"
                                :base-directory (path "src/scripts")
                                :publishing-directory (path "public/scripts")
                                :recursive t
                                :base-extension "js"
                                :publishing-function 'org-publish-attachment)
                          '("blog" :components ("pages" "styles" "scripts"))))))
         )))
