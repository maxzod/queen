import React from "react";
import clsx from "clsx";
import styles from "./HomepageFeatures.module.css";
// TODO :: update features images
const FeatureList = [
  {
    title: "Easy to Use",
    Svg: require("../../static/img/logo.svg").default,
    description: (
      <>Designed to make app development simpler , easier , faster </>
    ),
  },
  {
    title: "Focus on What Matters",
    Svg: require("../../static/img/logo.svg").default,
    description: (
      <>
        lets you focus on Your app requirements and business logic more not on
        the redundant features
      </>
    ),
  },
  {
    title: "Powered by Flutter",
    Svg: require("../../static/img/logo.svg").default,
    description: (
      <>
        under the hood it is just a collection of packages that works well
        together
      </>
    ),
  },
  {
    title: "State Management agnostic",
    Svg: require("../../static/img/logo.svg").default,
    description: <>Use What ever works for you, queen will not judge</>,
  },
  {
    title: "Support all platforms",
    Svg: require("../../static/img/logo.svg").default,
    description: <>no matter where you are deploying queen support it</>,
  },
  {
    title: "LightHouse 💡",
    Svg: require("../../static/img/logo.svg").default,
    description: <>it comes with a very simple `CLI` to make it even simpler</>,
  },
];

function Feature({ Svg, title, description }) {
  return (
    <div className={clsx("col col--4")}>
      <div className="text--center">
        <Svg className={styles.featureSvg} alt={title} />{" "}
      </div>{" "}
      <div className="text--center padding-horiz--md">
        <h3> {title} </h3> <p> {description} </p>{" "}
      </div>{" "}
    </div>
  );
}

export default function HomepageFeatures() {
  return (
    <section className={styles.features}>
      <div className="container">
        <div className="row">
          {" "}
          {FeatureList.map((props, idx) => (
            <Feature key={idx} {...props} />
          ))}{" "}
        </div>{" "}
      </div>{" "}
    </section>
  );
}
