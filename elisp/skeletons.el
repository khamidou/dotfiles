; Quelques squelettes utilisés assez souvent...
; Ils sont utilisés en conjonction avec abbrev.

(define-skeleton skeleton-if-null
  "Insert an if (z == NULL) { }"
  "Variable: "
 "if (" _ " == NULL) {" \n
 \n
 "}")

(define-skeleton skeleton-django-block
  "insert a django block" nil
  "{% begin " _ " %}" \n \n
  "{% endblock %}")

(define-skeleton skeleton-mongo-user
  "insert a mongo user block" nil
  "user = users.find_one({\"username\" : session.username})" \n
  "if user == None:" \n \t
  "return render.error(\"The user doesn't exists !\")")

(define-skeleton skeleton-webpy-template
  "insert a web.py template block" nil
  "$def with(" _ ")" \n)

(define-skeleton skeleton-jinja2-template
  "" nil
  "{% extends \"layout.htm\" %}\n" \n
  "{% block content %}\n"
  _ \n
  "{% endblock %}")

(define-skeleton skeleton-link-rel-stylesheet
  "" nil
  "<link rel=\"stylesheet\" href=\"style.css\" type=\"text/css\">")

(define-skeleton skeleton-meta-utf8
  "" nil
  "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />")

(setq skeleton-end-hook nil)

