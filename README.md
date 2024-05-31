# Patrones de diseño 🤖


## ¿Qué es?

Un patrón de diseño es una solución general y reutilizable para un problema común en el diseño de software. No es un código específico, sino una plantilla que se puede aplicar a situaciones específicas para resolver problemas de diseño de manera eficiente y eficaz. Los patrones de diseño ayudan a los desarrolladores a crear software más mantenible, reutilizable y comprensible.


## ¿Cambia en algo qué es un patrón de diseño en el desarrollo móvil en iOS?

En esencia, un patrón de diseño sigue siendo el mismo independientemente de la plataforma, ya que se trata de un concepto general en el desarrollo de software. Sin embargo, en el desarrollo móvil en iOS, algunos patrones de diseño se utilizan más comúnmente debido a las características y necesidades específicas de las aplicaciones móviles y el entorno de desarrollo de iOS.


## Tipos

Existen varios tipos de patrones de diseño, y estos se suelen clasificar en tres categorías principales:

+ Patrones Creacionales: Estos patrones se centran en la manera de crear objetos. Ayudan a hacer el sistema independiente de cómo se crean, componen y representan los objetos.
  + Singleton: Garantiza que una clase solo tenga una instancia y proporciona un punto de acceso global a ella.
  + Factory Method: Define una interfaz para crear un objeto, pero permite a las subclases alterar el tipo de objetos que se crearán.
  + Abstract Factory: Proporciona una interfaz para crear familias de objetos relacionados o dependientes sin especificar sus clases concretas.
  + Builder: Separa la construcción de un objeto complejo de su representación, permitiendo que el mismo proceso de construcción cree diferentes representaciones.
  + Prototype: Permite crear nuevos objetos copiando una instancia existente, evitando así la necesidad de crear objetos desde cero.

+ Patrones Estructurales: Estos patrones se ocupan de la composición de clases u objetos. Son útiles para formar estructuras grandes y flexibles entre objetos y clases.
  + Adapter: Permite que las interfaces incompatibles trabajen juntas.
  + Bridge: Desacopla una abstracción de su implementación para que ambas puedan variar independientemente.
  + Composite: Permite tratar objetos individuales y composiciones de objetos de manera uniforme.
  + Decorator: Agrega responsabilidades adicionales a un objeto de manera dinámica.
  + Facade: Proporciona una interfaz simplificada a un conjunto complejo de interfaces de un subsistema.
  + Flyweight: Reduce el coste de creación de objetos reutilizando los existentes de manera eficiente.
  + Proxy: Proporciona un sustituto o marcador de posición para otro objeto para controlar el acceso a él.

+ Patrones de Comportamiento: Estos patrones se centran en la comunicación entre objetos, cómo interactúan y cómo se reparten responsabilidades.
  + Chain of Responsibility: Permite que más de un objeto maneje una solicitud, pasando la solicitud a lo largo de una cadena de objetos.
  + Command: Encapsula una solicitud como un objeto, permitiendo parametrizar a los clientes con diferentes solicitudes, colas o registros de solicitudes.
  + Interpreter: Proporciona una forma de evaluar el lenguaje o gramática.
  + Iterator: Proporciona una manera de acceder secuencialmente a los elementos de un objeto agregado sin exponer su representación subyacente.
  + Mediator: Define un objeto que encapsula cómo interactúan un conjunto de objetos.
  + Memento: Sin violar la encapsulación, captura y externaliza el estado interno de un objeto para que el objeto pueda ser restaurado a este estado más tarde.
  + Observer: Define una dependencia de uno a muchos entre objetos para que cuando uno cambie de estado, todos sus dependientes sean notificados y actualizados automáticamente.
  + State: Permite que un objeto altere su comportamiento cuando su estado interno cambia.
  + Strategy: Define una familia de algoritmos, encapsula cada uno y los hace intercambiables.
  + Template Method: Define el esqueleto de un algoritmo en una operación, diferiendo algunos pasos a las subclases.
  + Visitor: Representa una operación que se va a realizar en los elementos de una estructura de objetos.

## Patrones de diseño comunes en el desarrollo móvil en iOS
En el desarrollo móvil, especialmente en iOS, algunos patrones de diseño son particularmente populares debido a su efectividad en la gestión de las interfaces de usuario, la arquitectura y la interacción entre componentes. Algunos de estos patrones incluyen:

- MVC (Model-View-Controller): Divide la aplicación en tres componentes principales: el Modelo (gestión de datos y lógica de negocio), la Vista (interfaz de usuario) y el Controlador (mediador entre el modelo y la vista).
- MVVM (Model-View-ViewModel): Extiende el patrón MVC separando la lógica de presentación en una clase adicional llamada ViewModel, que proporciona datos y comandos a la vista.
- VIPER (View-Interactor-Presenter-Entity-Router): Un patrón más modular y separado que divide las responsabilidades en componentes muy específicos, facilitando las pruebas y el mantenimiento.


1. MVP (Model-View-Presenter)
Descripción: Similar a MVVM, el patrón MVP separa la lógica de presentación en un componente llamado Presenter. El Presenter actúa como intermediario entre la Vista y el Modelo.
Beneficios: Mejora la testabilidad y separación de preocupaciones, y facilita la reutilización del código de la vista.
2. Coordinators
Descripción: Este patrón se utiliza para gestionar la navegación en una aplicación. Un Coordinator se encarga de la navegación y el flujo entre las vistas, desacoplando la lógica de navegación de los controladores de vista.
Beneficios: Simplifica los controladores de vista, mejora la reutilización y facilita la gestión de la navegación compleja.
3. Clean Architecture
Descripción: Promueve la separación de responsabilidades en capas claramente definidas (por ejemplo, presentación, dominio y datos). Cada capa tiene su propio propósito y no depende directamente de las capas inferiores.
Beneficios: Mejora la mantenibilidad, facilita las pruebas unitarias y la reutilización del código, y promueve una arquitectura desacoplada y modular.
4. Repository
Descripción: Este patrón proporciona una abstracción sobre el acceso a datos, permitiendo a la aplicación interactuar con diferentes fuentes de datos (como bases de datos locales y servicios web) de manera uniforme.
Beneficios: Facilita el cambio de la fuente de datos sin afectar a otras partes de la aplicación y mejora la mantenibilidad del código.
5. Dependency Injection
Descripción: En lugar de que un objeto cree sus dependencias, se las proporciona un mecanismo externo (como un contenedor de inyección de dependencias). En iOS, puede implementarse usando frameworks como Swinject.
Beneficios: Facilita las pruebas unitarias, promueve un diseño más modular y reduce el acoplamiento entre componentes.
6. Factory
Descripción: Proporciona una interfaz para crear objetos, permitiendo a las subclases alterar el tipo de objetos que se crearán.
Beneficios: Simplifica la creación de objetos y mejora la flexibilidad del código.
7. Singleton
Descripción: Garantiza que una clase solo tenga una instancia y proporciona un punto de acceso global a ella.
Beneficios: Facilita la gestión de estados globales, pero debe usarse con cuidado para evitar problemas de acoplamiento y testabilidad.
8. Observer
Descripción: Define una dependencia de uno a muchos entre objetos para que cuando uno cambie de estado, todos sus dependientes sean notificados y actualizados automáticamente.
Beneficios: Facilita la comunicación entre componentes y la implementación de patrones reactivos.
9. Strategy
Descripción: Define una familia de algoritmos, encapsula cada uno y los hace intercambiables. Permite que los algoritmos varíen independientemente de los clientes que los usan.
Beneficios: Mejora la flexibilidad y la reutilización de código al permitir el cambio dinámico de algoritmos en tiempo de ejecución.

## Fuentes

